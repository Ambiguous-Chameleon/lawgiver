# Removes this entity from the world without typical death animation / particles and such
teleport @s 0 -86 0
data merge entity @s {DeathLootTable:"",NoGravity:1b,Silent:1b}
execute on passengers run data merge entity @s {DeathLootTable:"",NoGravity:1b,Silent:1b}