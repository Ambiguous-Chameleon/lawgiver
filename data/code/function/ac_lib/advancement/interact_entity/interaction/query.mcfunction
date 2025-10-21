execute as @e[type=minecraft:interaction,distance=..10] if data entity @s interaction at @s run function code:ac_lib/advancement/interact_entity/interaction/main
execute as @e[type=minecraft:interaction,distance=..10] run data remove entity @s interaction

advancement revoke @s only ac_lib:interact_entity/interaction_rc