particle minecraft:flame ~ ~ ~ .1 .5 .1 .01 2 force @a
particle minecraft:smoke ~ ~ ~ .1 .1 .1 .01 1 force @a

execute unless data entity @s {inGround:1b} run return fail

particle minecraft:flame ~ ~ ~ .1 .1 .1 .5 3 force @a
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1
kill @s