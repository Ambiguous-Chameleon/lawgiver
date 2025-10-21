$execute store result storage minecraft:game_ref Data.ac_lib.load.numbers.current int 1 run scoreboard players set GameRef.Number TempValue1 $(range_min)
$scoreboard players set GameRef.RangeMax TempValue1 $(range_max)
function ac_lib:load/numbers/loop with storage minecraft:game_ref Data.ac_lib.load.numbers
data remove storage minecraft:game_ref Data.ac_lib.load.numbers
scoreboard players reset GameRef.Number
scoreboard players reset GameRef.RangeMax