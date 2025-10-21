# Summons a wind charge that shoots forward from the user.
playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 1 1
$summon minecraft:wind_charge ~ ~ ~ {Tags:["WindCharge","GetMotion"],acceleration_power:$(acceleration)d,Item:{id:"$(render)",count:1}}
$execute anchored eyes run teleport @n[type=minecraft:wind_charge,tag=GetMotion] ^ ^ ^0.5 ~$(x_spread) ~$(y_spread)
data modify entity @n[type=minecraft:wind_charge,tag=GetMotion] Owner set from entity @s UUID
execute as @n[type=minecraft:wind_charge,tag=GetMotion] at @s run function ac_lib:effect/motion/get

data merge storage minecraft:game_ref {Data:{ACLib_WindCharge:{acceleration:0.1,render:"minecraft:wind_charge",x_spread:"0..0",y_spread:"0..0"}}}