particle minecraft:angry_villager ~ ~15 ~ .3 .3 .3 1 5 force @a
playsound minecraft:entity.arrow.shoot master @a ~ ~15 ~ 1 1
summon minecraft:arrow ~ ~15 ~ {Tags:["Arrow","Lawgiver","Hellfire","GetMotion"],damage:9.0d,Fire:10000s}
execute positioned ~ ~15 ~ as @n[distance=..2,type=minecraft:arrow,tag=Hellfire,tag=GetMotion] at @s run function code:item/lawgiver/mode/hellfire/summon_arrow/4
kill @s