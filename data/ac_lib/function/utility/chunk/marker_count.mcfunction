# Removes duplicate markers in the same chunk.
execute store result score @s ACGeneric3 if entity @e[distance=..2,type=minecraft:marker]
execute if score @s ACGeneric3 matches 2.. run tag @s add Kill
execute if score @s ACGeneric3 matches 2.. run kill @s