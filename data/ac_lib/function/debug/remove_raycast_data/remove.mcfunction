$tag @e remove ray_$(raycast_id)
$data remove storage minecraft:raycast_mem$(raycast_id) Data
execute store result storage minecraft:debug Data.raycast_id int 1 run scoreboard players add GameRef.Debug TempValue1 1
execute if score GameRef.Debug TempValue1 matches ..48000 run function ac_lib:debug/remove_raycast_data/remove with storage minecraft:debug Data