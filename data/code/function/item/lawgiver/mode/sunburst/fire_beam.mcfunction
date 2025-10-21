# Fires Sunburst beam

clear @s[gamemode=!creative] *[minecraft:custom_data~{LawgiverAmmo:1b}] 16

# Summons beam entity
execute anchored eyes run summon minecraft:item_display ^ ^0.2 ^4.5 {Tags:["ItemDisplay","SunburstBeam","New"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0f,0f],scale:[0.5f,0.5f,50f]},item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"minecraft:entity/sunburst_beam/beam1"}},brightness:{block:15,sky:15}}
execute anchored eyes run teleport @n[distance=..10,type=minecraft:item_display,tag=SunburstBeam,tag=New] ^-0.3 ^0.2 ^75.5 ~ ~
tag @n[distance=..5,type=minecraft:item_display,tag=SunburstBeam,tag=New] remove New
execute anchored eyes run particle minecraft:flash{color:[1.000,0.722,0.169,1.00]} ~ ~ ~ 0 0 0 0 0 force @a
playsound ac_tech:item.lawgiver.shoot_sunburst2 master @a ~ ~ ~ 3 1

# Raycast
data merge storage minecraft:game_ref {Data:{raycast:{dist:150,type_set:["#ac_lib:mobs_p"],search_method:"distance",search_value:3,function1:"code:item/lawgiver/mode/sunburst/hit",pierce_count:999,executor:target,ignore_blocks:"true",particle_cmd:"particle minecraft:flash{color:[1.000,0.722,0.169,1.00]} ~ ~ ~ 0 0 0 0 0 force @a"}}}
function ac_lib:effect/raycast/general/prep with storage minecraft:game_ref Data.raycast

# Blasts player backward, recoil
function ac_lib:effect/force/player/backward/do {"x":"1","y":"1","z":"1"}

scoreboard players set @s RCCooldown 60
function ac_lib:mechanic/recoil/do {"amount":"20"}