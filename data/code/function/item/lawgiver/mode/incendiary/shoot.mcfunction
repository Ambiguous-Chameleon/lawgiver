execute if function ac_lib:c_predicate/hold_right_click run return fail

execute store result score GameRef.Num TempValue1 run clear @s *[minecraft:custom_data~{LawgiverAmmo:1b}] 0
execute unless score GameRef.Num TempValue1 >= 2 ACNumbers unless entity @s[gamemode=creative] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute unless score GameRef.Num TempValue1 >= 2 ACNumbers unless entity @s[gamemode=creative] run return fail
clear @s[gamemode=!creative] *[minecraft:custom_data~{LawgiverAmmo:1b}] 2

scoreboard players set @s RCCooldown 10
function ac_lib:mechanic/recoil/do {"amount":"1"}
execute anchored eyes run particle minecraft:small_flame ^-0.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:small_flame ^-0.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:small_flame ^-0.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1
playsound ac_tech:item.lawgiver.shoot master @a ~ ~ ~ 0.5 1

data merge storage minecraft:game_ref {Data:{raycast:{dist:25,type_set:["#ac_lib:mobs"],function1:"code:item/lawgiver/mode/incendiary/hit",executor:"target",particle_cmd:"particle minecraft:flame ^-0.3 ^ ^ .01 .01 .01 .01 1 force @a",pierce_count:99,search_value:1}}}
function ac_lib:effect/raycast/general/prep with storage minecraft:game_ref Data.raycast