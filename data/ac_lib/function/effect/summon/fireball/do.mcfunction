# Summons a fireball that shoots forward from the user.
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1
$summon minecraft:fireball ~ ~ ~ {Tags:["Fireball","GetMotion"],acceleration_power:$(acceleration)d,ExplosionPower:$(explosion_power)b,Item:{id:"$(render)",count:1}}
$execute anchored eyes run teleport @n[type=minecraft:fireball,tag=GetMotion] ^ ^ ^0.5 ~$(x_spread) ~$(y_spread)
data modify entity @n[type=minecraft:fireball,tag=GetMotion] Owner set from entity @s UUID

# Whether the fireball should deal block damage or not
$scoreboard players set GameRef.MobGriefing TempValue1 $(destroy)
execute if score GameRef.MobGriefing TempValue1 matches 0 run function ac_lib:effect/summon/fireball/no_grief_setup with storage minecraft:game_ref Data.ACLib_Fireball
scoreboard players reset GameRef.MobGriefing TempValue1

# Motion
execute as @n[type=minecraft:fireball,tag=GetMotion] at @s run function ac_lib:effect/motion/get

# Reset default values
data merge storage minecraft:game_ref {Data:{ACLib_Fireball:{acceleration:0.1,destroy:true,explosion_power:1,render:"minecraft:fire_charge",x_spread:"0..0",y_spread:"0..0"}}}