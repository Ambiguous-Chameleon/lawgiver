execute store result storage minecraft:debug Data.raycast_id int 1 run scoreboard players set GameRef.Debug TempValue1 1
function ac_lib:debug/remove_raycast_data/remove with storage minecraft:debug Data
data remove storage minecraft:debug Data
scoreboard players reset GameRef.Debug TempValue1
gamerule maxCommandChainLength 65536
tellraw @a [{"text":"[ raycast data removed ]","color":"gray","italic":true}]