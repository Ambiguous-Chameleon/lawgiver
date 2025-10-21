execute as @a run function code:tick/player/20t
execute as @e[type=#ac_lib:tick_list] run function code:tick/entity/20t

# Despawns mobs within this volume in the void (ACL)
execute positioned 0 -84 0 positioned ~-2 ~ ~-2 run kill @e[dx=3,dy=-10,dz=3]

# Detects when a day passes. Comment out when not in use (ACL)
#function ac_lib:utility/day_change

schedule function code:tick/20t 20t replace