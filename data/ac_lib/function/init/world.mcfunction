# Initializes world

# Generates a shulker box at this location to handle certain events. Comment out when not in use
function ac_lib:init/extra/generate_shulker_box

# Used for detecting change of day. Comment out when not in use
#@execute store result score GameRef.DayNew ACGeneric1 run time query day
#@execute store result score GameRef.DayOld ACGeneric1 run time query day

function ac_lib:effect/raycast/general/set_defaults

scoreboard players set GameRef.WorldInitAC ACGeneric1 1
#@tellraw @a [{"text":"World initialized!","color":"gray","italic":true}]