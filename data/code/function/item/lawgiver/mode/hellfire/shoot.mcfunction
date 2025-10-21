execute store result score GameRef.Num TempValue1 run clear @s *[minecraft:custom_data~{LawgiverAmmo:1b}] 0
execute unless score GameRef.Num TempValue1 >= 1 ACNumbers unless entity @s[gamemode=creative] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute unless score GameRef.Num TempValue1 >= 1 ACNumbers unless entity @s[gamemode=creative] run return fail
clear @s[gamemode=!creative] *[minecraft:custom_data~{LawgiverAmmo:1b}] 1

scoreboard players set @s RCCooldown 2
execute anchored eyes run particle minecraft:smoke ^-0.5 ^ ^0.8 .1 .1 .1 .01 1 force @a
playsound ac_tech:item.lawgiver.shoot master @a ~ ~ ~ 0.3 2
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 1

data merge storage minecraft:game_ref {Data:{raycast:{dist:25,type_set:["#ac_lib:mobs"],function1:"code:item/lawgiver/mode/hellfire/hit",executor:"target",on_block_collide:"true"}}}
function ac_lib:effect/raycast/general/prep with storage minecraft:game_ref Data.raycast