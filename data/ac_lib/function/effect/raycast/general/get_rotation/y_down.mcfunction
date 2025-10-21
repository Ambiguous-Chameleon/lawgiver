scoreboard players remove GameRef.RSpreadY TempValue1 1

execute if score GameRef.RSpreadY TempValue1 matches 1.. rotated ~ ~1 run function ac_lib:effect/raycast/general/get_rotation/y_down

execute if score GameRef.RSpreadY TempValue1 matches 0 anchored eyes positioned ^ ^ ^0.1 run function ac_lib:effect/raycast/general/do with storage minecraft:game_ref Data.raycast