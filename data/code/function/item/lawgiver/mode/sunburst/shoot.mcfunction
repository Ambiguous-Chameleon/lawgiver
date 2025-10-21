execute unless function ac_lib:c_predicate/hold_right_click run return fail

execute store result score GameRef.Num TempValue1 run clear @s *[minecraft:custom_data~{LawgiverAmmo:1b}] 0
execute unless score GameRef.Num TempValue1 >= 16 ACNumbers unless entity @s[gamemode=creative] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute unless score GameRef.Num TempValue1 >= 16 ACNumbers unless entity @s[gamemode=creative] run return fail

scoreboard players add @s FiringSunburst 1
execute if score @s FiringSunburst matches 1 run function ac_lib:mechanic/music/add/main {"name":"sunburst_charge","max_seconds":"12","particles":"false","loop":"false","toggle":"false"}
execute if score @s FiringSunburst matches 60..210 anchored eyes run particle minecraft:white_smoke ^-0.5 ^ ^0.5 0.2 0.1 0.2 0.35 1
execute if score @s FiringSunburst matches 100..210 anchored eyes run particle minecraft:electric_spark ^-0.5 ^ ^0.5 0.2 0.1 0.2 0.35 1
execute if score @s FiringSunburst matches 140..210 anchored eyes run particle minecraft:flame ^-0.5 ^ ^0.5 0.2 1 0.2 0.35 0

execute if score @s FiringSunburst matches 1..210 run function ac_lib:effect/screen_shake/do {"x_range":"-2..2","y_range":"-1..1"}
execute if score @s FiringSunburst matches 230 run function code:item/lawgiver/mode/sunburst/fire_beam