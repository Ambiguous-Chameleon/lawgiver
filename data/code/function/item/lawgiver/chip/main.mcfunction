# Installs the Lawgiver mode contained on the chip the player is holding
data modify storage minecraft:game_ref data.temp.mode set from entity @s SelectedItem.components.minecraft:custom_data.Mode
function code:item/lawgiver/chip/1 with storage minecraft:game_ref data.temp
data remove storage minecraft:game_ref data.temp