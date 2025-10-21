execute if function ac_lib:c_predicate/hold_right_click run return fail

execute store result score GameRef.Num TempValue1 run clear @s *[minecraft:custom_data~{LawgiverAmmo:1b}] 0
execute unless score GameRef.Num TempValue1 >= 4 ACNumbers unless entity @s[gamemode=creative] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute unless score GameRef.Num TempValue1 >= 4 ACNumbers unless entity @s[gamemode=creative] run return fail
clear @s[gamemode=!creative] *[minecraft:custom_data~{LawgiverAmmo:1b}] 4

scoreboard players set @s RCCooldown 20
function ac_lib:mechanic/recoil/do {"amount":"10"}
execute anchored eyes run particle minecraft:smoke ^-0.5 ^ ^0.8 .1 .1 .1 .01 3 force @a
execute anchored eyes run particle minecraft:smoke ^-0.5 ^ ^1 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:small_flame ^-0.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 2
playsound ac_tech:item.lawgiver.shoot master @a ~ ~ ~ 1 1.3

data merge storage minecraft:game_ref {Data:{raycast:{dist:10,type_set:["#ac_lib:mobs"],function1:"code:item/lawgiver/mode/shotgun/hit",executor:"target",ray_number:6,spread:{x:"-7..7",y:"-7..7"},particle_cmd:"execute if predicate ac_lib:rng/25_75 run particle minecraft:flame ~ ~ ~ ^ ^ ^1000000 0.00001 0"}}}
function ac_lib:effect/raycast/general/prep with storage minecraft:game_ref Data.raycast