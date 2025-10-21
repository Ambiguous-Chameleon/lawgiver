# Loads this entity's saved raycast data

execute store result storage minecraft:game_ref Data.raycast.id int 1 run data get storage minecraft:game_ref Data.raycast2.ids[0]
function ac_lib:effect/raycast/general/save_data/load/load with storage minecraft:game_ref Data.raycast
execute store result score GameRef.RayDist TempValue1 run data get storage minecraft:game_ref Data.raycast.mem_dist
execute store result score GameRef.RPierceCount TempValue1 run data get storage minecraft:game_ref Data.raycast.mem_pierce
tag @s remove DidRaycast
tag @s add Raycast