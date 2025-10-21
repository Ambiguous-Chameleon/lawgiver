# Saves the data/parameters of the current raycast to be resumed later this tick
# Useful for if a different raycast needs to be used in the middle of a raycast

execute store result storage minecraft:game_ref Data.raycast.mem_dist int 1 run scoreboard players get GameRef.RayDist TempValue1
execute store result storage minecraft:game_ref Data.raycast.mem_pierce int 1 run scoreboard players get GameRef.RPierceCount TempValue1

function ac_lib:effect/raycast/general/save_data/save/save with storage minecraft:game_ref Data.raycast

function ac_lib:effect/raycast/general/set_defaults
tag @s add DidRaycast
tag @s remove Raycast
scoreboard players reset GameRef.RaycastsThisTick TempValue1