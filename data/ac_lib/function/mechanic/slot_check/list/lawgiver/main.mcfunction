# Equip sound
execute if items entity @s[tag=!NameAnim] weapon.mainhand minecraft:clock[minecraft:custom_data~{Lawgiver:1b}] run playsound minecraft:block.iron_trapdoor.close master @s ~ ~ ~ 1 2

# Displays mode
function code:item/lawgiver/display_mode/slot_check

# Kills player if they ain't the owner
function code:item/lawgiver/check_id/1