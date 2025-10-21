scoreboard players add GameRef.RSpreadX TempValue1 1

execute if score GameRef.RSpreadX TempValue1 matches ..-1 rotated ~-1 ~ run function ac_lib:effect/raycast/general/get_rotation/x_left
execute if score GameRef.RSpreadX TempValue1 matches 0 run function ac_lib:effect/raycast/general/get_rotation/y_main