execute unless block ~ ~ ~ #ac_lib:sky_check run return 0
scoreboard players add GameRef.Height TempValue1 1
execute if score GameRef.Height TempValue1 matches ..320 positioned ~ ~1 ~ if function ac_lib:c_pred_supp/sky_check/loop run return 1
execute if score GameRef.Height TempValue1 matches 321.. run return 1