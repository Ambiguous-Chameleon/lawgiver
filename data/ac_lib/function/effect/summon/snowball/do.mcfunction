# Summons a snowball that shoots forward from the user.
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1 .5
$summon minecraft:snowball ~ ~ ~ {Tags:["Snowball","GetMotion","GetBonusM"],Item:{id:"$(render)",count:1}}
$execute anchored eyes run teleport @n[type=minecraft:snowball,tag=GetMotion] ^ ^ ^0.5 ~$(x_spread) ~$(y_spread)
data modify entity @n[type=minecraft:snowball,tag=GetMotion] Owner set from entity @s UUID
execute as @n[type=minecraft:snowball,tag=GetMotion] at @s run function ac_lib:effect/motion/get

data merge storage minecraft:game_ref {Data:{ACLib_Snowball:{acceleration:0.1,render:"minecraft:snowball",x_spread:"0..0",y_spread:"0..0"}}}