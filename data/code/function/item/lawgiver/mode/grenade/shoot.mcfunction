execute if function ac_lib:c_predicate/hold_right_click run return fail

execute store result score GameRef.Num TempValue1 run clear @s *[minecraft:custom_data~{LawgiverAmmo:1b}] 0
execute unless score GameRef.Num TempValue1 >= 6 ACNumbers unless entity @s[gamemode=creative] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute unless score GameRef.Num TempValue1 >= 6 ACNumbers unless entity @s[gamemode=creative] run return fail
clear @s[gamemode=!creative] *[minecraft:custom_data~{LawgiverAmmo:1b}] 6

scoreboard players set @s RCCooldown 20
function ac_lib:mechanic/recoil/do {"amount":"7"}
execute anchored eyes run particle minecraft:smoke ^-0.5 ^ ^0.8 .1 .1 .1 .01 3 force @a
execute anchored eyes run particle minecraft:smoke ^-0.5 ^ ^1 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:small_flame ^-0.5 ^ ^0.5 ^ ^ ^1000000 0.00001 0
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 2

summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["ArmorStand","LawgiverGrenade","GetMotion","GetBonusM"],equipment:{head:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"minecraft:grenade"}}},attributes:[{id:"minecraft:scale",base:0.5}],DisabledSlots:16191,Invisible:1b,Invulnerable:1b,Silent:1b,Small:1b}
execute anchored eyes positioned ~ ~1.5 ~ run teleport @n[distance=..5,type=minecraft:armor_stand,tag=LawgiverGrenade,tag=GetMotion] ^ ^ ^1.5 ~ ~
data merge storage minecraft:game_ref {Data:{Motion:{x:2,y:2,z:2}}}
execute as @n[distance=..5,type=minecraft:armor_stand,tag=LawgiverGrenade,tag=GetMotion] at @s run function ac_lib:effect/motion/get