# Lawgiver
execute if items entity @s weapon.* minecraft:clock[minecraft:custom_data~{Lawgiver:1b}] run function ac_lib:mechanic/slot_check/list/lawgiver/main
execute unless items entity @s weapon.* minecraft:clock[minecraft:custom_data~{Lawgiver:1b}] run function ac_lib:mechanic/music/remove/main {"name":"rocket"}