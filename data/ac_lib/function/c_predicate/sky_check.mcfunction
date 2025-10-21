# Checks if this entity is exposed to the sky
execute store result score GameRef.Height TempValue1 run data get entity @s Pos[1]
execute if function ac_lib:c_pred_supp/sky_check/loop run return 1
scoreboard players reset GameRef.Height TempValue1