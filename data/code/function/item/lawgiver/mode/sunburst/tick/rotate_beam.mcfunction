# Run every 1 tick
scoreboard players add @s ACGeneric1 1
scoreboard players set @s[scores={ACGeneric1=4..}] ACGeneric1 0
data modify entity @s[scores={ACGeneric1=0}] item.components.minecraft:item_model set value "minecraft:entity/sunburst_beam/beam1"
data modify entity @s[scores={ACGeneric1=1}] item.components.minecraft:item_model set value "minecraft:entity/sunburst_beam/beam2"
data modify entity @s[scores={ACGeneric1=2}] item.components.minecraft:item_model set value "minecraft:entity/sunburst_beam/beam3"
data modify entity @s[scores={ACGeneric1=3}] item.components.minecraft:item_model set value "minecraft:entity/sunburst_beam/beam4"

scoreboard players add @s ACGeneric2 1
execute if score @s ACGeneric2 matches 10.. run kill @s