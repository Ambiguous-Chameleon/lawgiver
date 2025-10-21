# Changes mode of player's equipped Lawgiver
$execute as @s[tag=!HasLG$(mode)] run tellraw @s [{"text":"Mode locked","color":"red"}]
$execute as @s[tag=!HasLG$(mode)] run return fail
$playsound ac_tech:item.lawgiver.mode_$(mode)

$execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Lawgiver:1b}] run function code:item/lawgiver/swap_mode/swap2 {"mode":"$(mode)","message":"$(message)","slot":"mainhand"}
$execute if items entity @s[tag=!Swapped] weapon.offhand *[minecraft:custom_data~{Lawgiver:1b}] run function code:item/lawgiver/swap_mode/swap2 {"mode":"$(mode)","message":"$(message)","slot":"offhand"}
tag @s remove Swapped