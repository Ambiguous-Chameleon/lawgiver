# Debug particles. Comment out when not in use
# execute if predicate ac_lib:rng/15_85 as @s run particle end_rod ~ ~ ~

# Particles
execute if data storage minecraft:game_ref Data.raycast.particle_cmd run function ac_lib:effect/raycast/general/fx_particles with storage minecraft:game_ref Data.raycast

# Finds entity
$execute if data storage minecraft:game_ref {Data:{raycast:{search_method:"distance"}}} as @e[type=#ac_lib:mobs_p,tag=!Raycast,tag=!This,distance=..$(search_value),limit=1,sort=nearest] run function ac_lib:effect/raycast/general/hit/mob/main

$execute if data storage minecraft:game_ref {Data:{raycast:{search_method:"dx"}}} as @e[type=#ac_lib:mobs_p,tag=!Raycast,tag=!This,dx=$(search_value),limit=1,sort=nearest] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=$(search_value)] positioned ~0.99 ~0.99 ~0.99 run function ac_lib:effect/raycast/general/hit/mob/main

# Detects block collision
execute unless block ~ ~ ~ #ac_lib:non_solid run function ac_lib:effect/raycast/general/hit/block/main with storage minecraft:game_ref Data.raycast

# Continues raycast
scoreboard players remove GameRef.RayDist TempValue1 1
execute if score GameRef.RayDist TempValue1 matches 0 if data storage minecraft:game_ref {Data:{raycast:{force_success:"true"}}} run function ac_lib:effect/raycast/general/force_success
execute if score GameRef.RayDist TempValue1 matches 1.. positioned ^ ^ ^0.1 run function ac_lib:effect/raycast/general/do with storage minecraft:game_ref Data.raycast