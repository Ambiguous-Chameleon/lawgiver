# Fires Lawgiver / opens dialog to swap its mode
execute if items entity @s weapon.* minecraft:clock[minecraft:custom_data~{Lawgiver:1b}] unless predicate ac_lib:sneaking unless items entity @s weapon.mainhand minecraft:clock[minecraft:custom_data~{LawgiverChip:1b}] at @s run function code:item/lawgiver/shoot/main
execute if items entity @s weapon.* minecraft:clock[minecraft:custom_data~{Lawgiver:1b}] if predicate ac_lib:sneaking unless items entity @s weapon.mainhand minecraft:clock[minecraft:custom_data~{LawgiverChip:1b}] at @s run function code:item/lawgiver/swap_mode/dialog

# Installs Data Chips
execute if items entity @s weapon.mainhand minecraft:clock[minecraft:custom_data~{LawgiverChip:1b}] if items entity @s weapon.offhand minecraft:clock[minecraft:custom_data~{Lawgiver:1b}] at @s run function code:item/lawgiver/chip/main