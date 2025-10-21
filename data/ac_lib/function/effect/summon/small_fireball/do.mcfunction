# Summons a small fireball that shoots forward from the user.
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1
$summon minecraft:small_fireball ~ ~ ~ {Tags:["SmallFireball","GetMotion"],acceleration_power:$(acceleration)d,Item:{id:"$(render)",count:1}}
$execute anchored eyes run teleport @n[type=minecraft:small_fireball,tag=GetMotion] ^ ^ ^0.5 ~$(x_spread) ~$(y_spread)
data modify entity @n[type=minecraft:small_fireball,tag=GetMotion] Owner set from entity @s UUID
execute as @n[type=minecraft:small_fireball,tag=GetMotion] at @s run function ac_lib:effect/motion/get

data merge storage minecraft:game_ref {Data:{ACLib_SFireball:{acceleration:0.1,render:"minecraft:fire_charge",x_spread:"0..0",y_spread:"0..0"}}}