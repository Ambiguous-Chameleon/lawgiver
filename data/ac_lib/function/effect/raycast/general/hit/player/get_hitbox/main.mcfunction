# Determines where on this humanoid mob the raycast hit.

execute as @s[tag=!Calculated] run function ac_lib:effect/raycast/general/hit/player/get_hitbox/regular
tag @s remove Calculated