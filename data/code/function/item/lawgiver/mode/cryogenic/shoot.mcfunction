execute if function ac_lib:c_predicate/hold_right_click run return fail

execute store result score GameRef.Num TempValue1 run clear @s *[minecraft:custom_data~{LawgiverAmmo:1b}] 0
execute unless score GameRef.Num TempValue1 >= 2 ACNumbers unless entity @s[gamemode=creative] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute unless score GameRef.Num TempValue1 >= 2 ACNumbers unless entity @s[gamemode=creative] run return fail
clear @s[gamemode=!creative] *[minecraft:custom_data~{LawgiverAmmo:1b}] 2

scoreboard players set @s RCCooldown 20
function ac_lib:mechanic/recoil/do {"amount":"2"}
execute anchored eyes run particle block{block_state:"minecraft:ice"} ^-0.5 ^ ^0.8 .1 .1 .1 .01 3 force @a
playsound ac_tech:item.lawgiver.shoot master @a ~ ~ ~ 1 .5

data merge storage minecraft:game_ref {Data:{raycast:{dist:25,type_set:["#ac_lib:mobs"],function1:"code:item/lawgiver/mode/cryogenic/hit",executor:"target",particle_cmd:"execute if predicate ac_lib:rng/50_50 run particle minecraft:white_ash ~ ~ ~ .01 .01 .01 .01 1 force @a"}}}
function ac_lib:effect/raycast/general/prep with storage minecraft:game_ref Data.raycast