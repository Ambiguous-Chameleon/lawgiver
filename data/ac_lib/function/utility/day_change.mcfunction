# Detects when a day passes
execute store result score GameRef.DayNew ACGeneric1 run time query day
execute unless score GameRef.DayNew ACGeneric1 = GameRef.DayOld ACGeneric1 run function code:ac_lib/utility/day_change
execute store result score GameRef.DayOld ACGeneric1 run time query day