execute unless score @s PlayerID = @s PlayerID run function ac_lib:mechanic/player_id

execute store result storage minecraft:game_ref Data.player_id int 1 run scoreboard players get @s PlayerID
function ac_lib:init/extra/custom_effects/get_data with storage minecraft:game_ref Data
data remove storage minecraft:game_ref Data.player_id
tag @s add HasCEBar