scoreboard players add @s[tag=!NameAnim] NameAnimLawgiver 1
execute if score @s NameAnimLawgiver matches 14 run scoreboard players reset @s NameAnimLawgiver
tag @s add NameAnim

$data modify storage minecraft:game_ref data.temp.slot set value "$(slot)"
execute unless entity @s[advancements={code:gui/lawgiver/unlock_sunburst=true}] run function code:item/lawgiver/animate_name/regular with storage minecraft:game_ref data.temp
execute if entity @s[advancements={code:gui/lawgiver/unlock_sunburst=true}] run function code:item/lawgiver/animate_name/all_modes with storage minecraft:game_ref data.temp
data remove storage minecraft:game_ref data.temp