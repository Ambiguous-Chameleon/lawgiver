# Creates an explosion and drops the gun. Shouldn't'a betrayed the law
function ac_lib:effect/explode/prep {"type":"ExplodeSmall","radius":"3","name":"disobeying the LAAAAAW","dx":"1","dy":"1",dz:"1","speed":".1","count":"5","destroy":"false"}

$item replace block 787878 -64 787878 container.0 from entity @s weapon.$(hand)
$item replace entity @s weapon.$(hand) with minecraft:air
summon minecraft:item ~ ~ ~ {Tags:["Item","New"],Item:{id:"stone",count:1},Invulnerable:1b}
execute as @n[distance=..2,type=minecraft:item,tag=New] run function code:item/lawgiver/check_id/drop_gun
item replace block 787878 -64 787878 container.0 with minecraft:air