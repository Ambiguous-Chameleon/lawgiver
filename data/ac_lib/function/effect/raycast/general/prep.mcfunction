scoreboard players add GameRef.RaycastsThisTick TempValue1 1
#@ comment out \/
#@execute if score GameRef.RaycastsThisTick TempValue1 matches 2.. run tellraw @p [{"text":"raycast in raycast detected","color":"yellow"}]
execute if data storage minecraft:game_ref {Data:{raycast:{executor:"this"}}} run data modify storage minecraft:game_ref Data.raycast.selector set value "@n[tag=Raycast]"
execute if data storage minecraft:game_ref {Data:{raycast:{executor:"target"}}} run data modify storage minecraft:game_ref Data.raycast.selector set value "@s"
execute store result storage minecraft:game_ref Data.raycast.id int 1 run random value 1..48000
$scoreboard players set GameRef.RayDist TempValue1 $(dist)
scoreboard players operation GameRef.RayDist TempValue1 *= 10 ACNumbers
$scoreboard players set GameRef.RPierceCount TempValue1 $(pierce_count)
$execute as @s[tag=!RaycastInit] run scoreboard players set GameRef.RNumber TempValue1 $(ray_number)
tag @s add Raycast
tag @s add RaycastInit

# Applies spread if needed
execute if data storage minecraft:game_ref Data.raycast.spread run function ac_lib:effect/raycast/general/get_rotation/main with storage minecraft:game_ref Data.raycast.spread

# Runs the raycast
execute unless data storage minecraft:game_ref Data.raycast.spread anchored eyes positioned ^ ^ ^0.1 run function ac_lib:effect/raycast/general/do with storage minecraft:game_ref Data.raycast

# Performs additional raycasts if needed
scoreboard players reset GameRef.RaycastsThisTick TempValue1
scoreboard players remove GameRef.RNumber TempValue1 1
execute if score GameRef.RNumber TempValue1 matches 1.. run function ac_lib:effect/raycast/general/prep with storage minecraft:game_ref Data.raycast


# Resets everything
scoreboard players reset GameRef.RayDist TempValue1
scoreboard players reset GameRef.RPierceCount TempValue1
scoreboard players reset GameRef.RSpreadX TempValue1
scoreboard players reset GameRef.RSpreadY TempValue1
scoreboard players reset GameRef.RNumber TempValue1
function ac_lib:effect/raycast/general/remove_ray_tag with storage minecraft:game_ref Data.raycast
tag @s remove Raycast
tag @s remove RaycastInit
tag @s remove RAOE
tag @s remove RGetPos
tag @e remove ThisRaycaster
function ac_lib:effect/raycast/general/set_defaults