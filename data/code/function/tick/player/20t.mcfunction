# Initializes new players (ACL)
execute as @s[tag=!PlayerInitAC] run function ac_lib:init/player
execute as @s[tag=!PlayerInit] run function code:init/player

# Plays custom music (ACL)
execute at @s[tag=ACPlayMusic] run function ac_lib:mechanic/music/play/main

# Custom potion effects (ACL)
execute if score @s AC.CE.phasing matches 1.. run function ac_lib:effect/custom_potion/countdown {"effect_id":"phasing"}
# -----
# -----
# -----



# Display Lawgiver mode
execute if items entity @s weapon.* *[minecraft:custom_data~{Lawgiver:1b}] run function code:item/lawgiver/display_mode/slot_check

# Unlocks final Lawgiver mode
execute at @s if score @s LGAllModes matches 1..15 run function code:item/lawgiver/all_modes_counter