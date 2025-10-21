$data modify storage minecraft:game_ref data.temp.mode set value "$(mode)"
$data modify storage minecraft:game_ref data.temp.message set value "$(message)"
$item modify entity @s weapon.$(slot) [{function:"minecraft:copy_custom_data",source:{type:"minecraft:storage",source:"minecraft:game_ref"},ops:[{source:"data.temp.mode",target:"Mode",op:"replace"}]},{function:"minecraft:copy_custom_data",source:{type:"minecraft:storage",source:"minecraft:game_ref"},ops:[{source:"data.temp.message",target:"Message",op:"replace"}]}]
data remove storage minecraft:game_ref data.temp
tag @s add Swapped