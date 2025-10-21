$scoreboard players set $(current) ACNumbers $(current)
execute store result storage minecraft:game_ref Data.ac_lib.load.numbers.current int 1 run scoreboard players add GameRef.Number TempValue1 1
execute unless score GameRef.Number TempValue1 > GameRef.RangeMax TempValue1 run function ac_lib:load/numbers/loop with storage minecraft:game_ref Data.ac_lib.load.numbers