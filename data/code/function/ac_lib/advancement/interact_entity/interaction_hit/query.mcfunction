execute as @e[type=minecraft:interaction,distance=..10] if data entity @s attack at @s run function code:ac_lib/advancement/interact_entity/interaction_hit/main
execute as @e[type=minecraft:interaction,distance=..10] run data remove entity @s attack

advancement revoke @s only ac_lib:interact_entity/interaction_hit