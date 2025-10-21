execute as @s[distance=1.5..] run particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~ ~ .1 .1 .1 .1 5 force @a
tag @s[distance=1.5..] add ShotHead
tag @s[distance=1..1.5] add ShotChest
tag @s[distance=..1] add ShotFeet