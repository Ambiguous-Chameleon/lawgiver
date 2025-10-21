# Creates explosion.
$execute as @s[tag=Delayed] run teleport @n[type=minecraft:creeper,tag=$(type)] ~ ~ ~
$execute as @s[tag=!Delayed] run summon minecraft:creeper ~ -64 ~ {Tags:["Creeper","ACLib","Explosion","$(type)"],CustomName:{"text":"$(name)"},CustomNameVisible:0b,DeathLootTable:"",ExplosionRadius:$(radius),Fuse:2,ignited:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b}
$particle minecraft:explosion ~ ~ ~ $(dx) $(dy) $(dz) $(speed) $(count) force @a
kill @s[tag=Delayed]
tag @s add Delayed