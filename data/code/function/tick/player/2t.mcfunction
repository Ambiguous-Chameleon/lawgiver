# Custom potion effects (ACL)

# Phasing
execute if score @s AC.CE.phasing matches 1.. at @s run function ac_lib:effect/custom_potion/list/phasing/tick/block_phase
# -----
# -----
# -----



# Animate Lawgiver item name
execute if items entity @s weapon.mainhand minecraft:clock[minecraft:custom_data~{Lawgiver:1b}] run function code:item/lawgiver/animate_name/main {"slot":"mainhand"}
execute if items entity @s weapon.offhand minecraft:clock[minecraft:custom_data~{Lawgiver:1b}] run function code:item/lawgiver/animate_name/main {"slot":"offhand"}
tag @s remove NameAnim