# Summons a shulker bullet.
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1

execute if data storage minecraft:game_ref {Data:{ACLib_Shulker_Bullet:{mode:motion}}} run summon minecraft:shulker_bullet ~ ~ ~ {Tags:["ShulkerBullet","GetMotion","GetBonusM","New"]}
$execute if data storage minecraft:game_ref {Data:{ACLib_Shulker_Bullet:{mode:step}}} run summon minecraft:shulker_bullet ~ ~ ~ {Tags:["ShulkerBullet","New"],Steps:$(steps)}

$execute anchored eyes run teleport @n[type=minecraft:shulker_bullet,tag=GetMotion] ^ ^ ^0.5 ~$(x_spread) ~$(y_spread)
data modify entity @n[type=minecraft:shulker_bullet,tag=New] Owner set from entity @s UUID
$execute if data storage minecraft:game_ref {Data:{ACLib_Shulker_Bullet:{mode:step}}} run data modify entity @n[type=minecraft:shulker_bullet,tag=New] Target set from entity $(target) UUID
execute as @n[type=minecraft:shulker_bullet,tag=GetMotion] at @s run function ac_lib:effect/motion/get
tag @n[type=minecraft:shulker_bullet,tag=New] remove New