$summon minecraft:marker ~ ~ ~ {Tags:["Marker","ACLib","Fireball","NoGrief","NeedsVehicle"],data:{explosion_power:$(explosion_power)}}
ride @n[type=minecraft:marker,tag=Fireball,tag=NoGrief] mount @n[type=minecraft:fireball,tag=GetMotion]
data modify entity @n[type=minecraft:fireball,tag=GetMotion] ExplosionPower set value 0