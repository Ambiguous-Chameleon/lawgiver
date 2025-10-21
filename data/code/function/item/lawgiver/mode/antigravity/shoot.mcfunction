execute store result score GameRef.Num TempValue1 run clear @s *[minecraft:custom_data~{LawgiverAmmo:1b}] 0
execute unless score GameRef.Num TempValue1 >= 2 ACNumbers unless entity @s[gamemode=creative] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute unless score GameRef.Num TempValue1 >= 2 ACNumbers unless entity @s[gamemode=creative] run return fail
clear @s[gamemode=!creative] *[minecraft:custom_data~{LawgiverAmmo:1b}] 2

scoreboard players set @s RCCooldown 10
function ac_lib:mechanic/recoil/do {"amount":"2"}
execute anchored eyes run particle minecraft:smoke ^-0.5 ^ ^0.8 .1 .1 .1 .01 3 force @a
execute anchored eyes run particle minecraft:smoke ^-0.5 ^ ^1 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:end_rod ^-0.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0

function ac_lib:effect/summon/shulker_bullet/prep {"mode":"motion","power":"2","steps":"0","target":"@p","x_spread":"0","y_spread":"0"}