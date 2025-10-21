execute store result score GameRef.Num TempValue1 run clear @s *[minecraft:custom_data~{LawgiverAmmo:1b}] 0
execute unless score GameRef.Num TempValue1 >= 4 ACNumbers unless entity @s[gamemode=creative] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute unless score GameRef.Num TempValue1 >= 4 ACNumbers unless entity @s[gamemode=creative] run return fail
clear @s[gamemode=!creative] *[minecraft:custom_data~{LawgiverAmmo:1b}] 4

scoreboard players set @s RCCooldown 10
function ac_lib:mechanic/recoil/do {"amount":"1"}
playsound ac_tech:item.lawgiver.shoot_laser_beam master @a ~ ~ ~ 1 2

data merge storage minecraft:game_ref {Data:{raycast:{dist:40,type_set:["#ac_lib:mobs"],function1:"code:item/lawgiver/mode/laser_beam/hit",executor:"target",particle_cmd:"execute if predicate ac_lib:rng/50_50 run particle minecraft:dust{color:[1.000,0.000,0.000],scale:0.5} ^-0.3 ^ ^ .01 .01 .01 .01 1 force @a",pierce_count:99}}}
function ac_lib:effect/raycast/general/prep with storage minecraft:game_ref Data.raycast