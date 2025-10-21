loot insert 787878 -64 787878 mine ~ ~ ~ minecraft:netherite_pickaxe[enchantments={"silk_touch":1}]
summon minecraft:block_display ~-0.5 ~-0.968 ~-0.5 {Tags:["BlockDisplay","Phased"],block_state:{Name:"minecraft:air"}}
execute positioned ~-0.5 ~-0.968 ~-0.5 run data modify entity @n[distance=..2,type=minecraft:block_display,tag=Phased] block_state.Name set from block 787878 -64 787878 Items[0].id
item replace block 787878 -64 787878 container.0 with minecraft:air
setblock ~ ~ ~ minecraft:air
kill @s