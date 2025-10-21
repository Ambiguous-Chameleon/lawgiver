summon minecraft:armor_stand ~ ~ ~ {Tags:["New"],DisabledSlots:16191,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Silent:1b,Small:1b}
ride @s mount @n[distance=..2,type=minecraft:armor_stand,tag=New]
execute on vehicle run data merge entity @s {Tags:["ArmorStand","ACLib.Force","GetMotion"]}
execute on vehicle run data modify entity @s Rotation set from entity @n[tag=ThisMarker] Rotation