execute store result storage minecraft:game_ref data.temp.x int 1 run random value -2..2
execute store result storage minecraft:game_ref data.temp.z int 1 run random value -2..2
function code:item/lawgiver/mode/hellfire/summon_arrow/2 with storage minecraft:game_ref data.temp
data remove storage minecraft:game_ref data.temp