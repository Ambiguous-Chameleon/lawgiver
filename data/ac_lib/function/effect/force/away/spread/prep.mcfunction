$summon minecraft:item ~ ~ ~ {Tags:["Item","ACLib.Force","RotateOpp","GetMotion","New"],Item:{components:{"minecraft:item_model":"minecraft:invisible"},id:"minecraft:snowball",count:1},Invulnerable:1b,PickupDelay:999999999,Silent:1b,data:{force:{x:$(x),y:$(y),z:$(z)}}}
ride @s mount @n[distance=..2,type=minecraft:item,tag=New]
execute on vehicle run tag @s remove New