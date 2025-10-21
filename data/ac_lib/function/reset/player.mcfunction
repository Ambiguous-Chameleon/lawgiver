# Resets various scores, tags etc.

execute unless score @s RCCooldown matches 0 run scoreboard players remove @s RCCooldown 1
execute unless score @s ACRecoilX matches 0 run function ac_lib:reset/player/ac_recoil_x
execute unless score @s ACRecoilY matches 0 run function ac_lib:reset/player/ac_recoil_y

scoreboard players reset @s ACSwim
scoreboard players reset @s InteractBrew

tag @s remove AC.CECheck.S