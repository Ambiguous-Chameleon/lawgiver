execute if function ac_lib:c_predicate/hold_right_click run return fail

execute store result score GameRef.Num TempValue1 run clear @s *[minecraft:custom_data~{LawgiverAmmo:1b}] 0
execute unless score GameRef.Num TempValue1 >= 2 ACNumbers unless entity @s[gamemode=creative] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute unless score GameRef.Num TempValue1 >= 2 ACNumbers unless entity @s[gamemode=creative] run return fail
clear @s[gamemode=!creative] *[minecraft:custom_data~{LawgiverAmmo:1b}] 2

scoreboard players set @s RCCooldown 25
function ac_lib:mechanic/recoil/do {"amount":"5"}
execute anchored eyes run particle minecraft:smoke ^-0.5 ^ ^0.8 .1 .1 .1 .01 3 force @a
playsound ac_tech:item.lawgiver.shoot master @a ~ ~ ~ 1 1.5
playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 0.5 2

summon minecraft:lingering_potion ~ ~1.5 ~ {Tags:["LingeringPotion","LawgiverGas","GetMotion","GetBonusM"],Item:{components:{"minecraft:potion_contents":{potion:"minecraft:long_poison"}},count:1,id:"minecraft:lingering_potion"}}
data modify entity @n[distance=..5,type=minecraft:lingering_potion,tag=LawgiverGas,tag=GetMotion] Owner set from entity @s UUID
execute anchored eyes positioned ~ ~1.5 ~ run teleport @n[distance=..5,type=minecraft:lingering_potion,tag=LawgiverGas,tag=GetMotion] ^ ^ ^1.5 ~ ~
data merge storage minecraft:game_ref {Data:{Motion:{x:2,y:2,z:2}}}
execute as @n[distance=..5,type=minecraft:lingering_potion,tag=LawgiverGas,tag=GetMotion] at @s run function ac_lib:effect/motion/get