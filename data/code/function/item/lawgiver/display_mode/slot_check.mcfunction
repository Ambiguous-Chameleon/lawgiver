execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Lawgiver:1b}] run function code:item/lawgiver/display_mode/get_mode {"slot":"SelectedItem"}
execute if items entity @s[tag=!GotMode] weapon.offhand *[minecraft:custom_data~{Lawgiver:1b}] run function code:item/lawgiver/display_mode/get_mode {"slot":"equipment.offhand"}
data remove storage minecraft:game_ref data.temp
tag @s remove GotMode