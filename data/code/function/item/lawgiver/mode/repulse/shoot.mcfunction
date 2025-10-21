execute store result score GameRef.Num TempValue1 run clear @s *[minecraft:custom_data~{LawgiverAmmo:1b}] 0
execute unless score GameRef.Num TempValue1 >= 2 ACNumbers unless entity @s[gamemode=creative] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute unless score GameRef.Num TempValue1 >= 2 ACNumbers unless entity @s[gamemode=creative] run return fail
clear @s[gamemode=!creative] *[minecraft:custom_data~{LawgiverAmmo:1b}] 2

scoreboard players set @s RCCooldown 20
function ac_lib:mechanic/recoil/do {"amount":"10"}
execute anchored eyes run particle minecraft:poof ^-0.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:poof ^-0.5 ^0.5 ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:poof ^-0.5 ^-0.5 ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:poof ^-0.75 ^ ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:poof ^-0.25 ^ ^0.5 ^ ^ ^1000000 0.00001 0

execute anchored eyes run particle minecraft:poof ^0.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:poof ^1.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:poof ^2.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:poof ^3.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0

execute anchored eyes run particle minecraft:poof ^-1.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:poof ^-2.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:poof ^-3.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:poof ^-4.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0

execute anchored eyes run particle minecraft:gust_emitter_small ^-0.5 ^ ^2.5 0.1 0.1 0.1 0.5 1
execute anchored eyes run particle minecraft:poof ^-0.5 ^ ^0.5 0.1 0.1 0.1 0.5 10
playsound ac_tech:item.lawgiver.shoot master @a ~ ~ ~ 1 1.5
playsound ac_tech:item.lawgiver.shoot_repulse master @a ~ ~ ~ 1 1
playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 1 1

function ac_lib:effect/force/do {"dir":"away","type":"spread","x":"2","y":"2","z":"2"}