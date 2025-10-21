$execute as @s[tag=HasLG$(mode)] run return fail
playsound ac_tech:item.lawgiver.chip_install master @a ~ ~ ~ 1 1.2
$playsound ac_tech:item.lawgiver.chip_$(mode) master @a ~ ~ ~ 1 1
$advancement grant @s only code:gui/lawgiver/unlock_$(mode)
item modify entity @s weapon.mainhand ac_lib:count_remove
$tag @s add HasLG$(mode)
scoreboard players set @s[tag=HasLGantigravity,tag=HasLGcryogenic,tag=HasLGgas,tag=HasLGgrenade,tag=HasLGhellfire,tag=HasLGincendiary,tag=HasLGlaser_beam,tag=HasLGparty,tag=HasLGrepulse,tag=HasLGshotgun] LGAllModes 1