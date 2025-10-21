# Initializes players

# Setup bossbar/storage for custom effects. Comment out when not in use (ACL)
#@execute as @s[tag=!HasCEBar] run function ac_lib:init/extra/custom_effects/main

#@tellraw @s [{"text":"Player initialized!","color":"gray","italic":true}]

execute as @a run function code:ac_lib/load_message

tag @s add PlayerInitAC