execute store result storage minecraft:game_ref data.temp.ammo int 1 run clear @s minecraft:clock[minecraft:custom_data~{LawgiverAmmo:1b}] 0
$data modify storage minecraft:game_ref data.temp.message set from entity @s $(slot).components.minecraft:custom_data.Message
function code:item/lawgiver/display_mode/message with storage minecraft:game_ref data.temp
tag @s add GotMode