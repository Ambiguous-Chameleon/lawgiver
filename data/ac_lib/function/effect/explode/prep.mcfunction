# Prepares an explosion.
execute store result score GameRef.MobGriefingCheck TempValue1 run gamerule mobGriefing
$gamerule mobGriefing $(destroy)
$summon minecraft:marker ~ ~ ~ {Tags:["Marker","Explosion"],data:{Explosion:{type:$(type),radius:$(radius),name:"$(name)",dx:$(dx),dy:$(dy),dz:$(dz),speed:$(speed),count:$(count)}}}
execute unless score GameRef.MobGriefingCheck TempValue1 matches 0 run scoreboard players set GameRef.MobGriefing ACGeneric1 4
scoreboard players reset GameRef.MobGriefingCheck TempValue1