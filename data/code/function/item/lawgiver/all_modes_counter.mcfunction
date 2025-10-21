scoreboard players add @s LGAllModes 1
execute unless score @s LGAllModes matches 15 run return fail

advancement grant @s only code:gui/lawgiver/unlock_sunburst
playsound ac_tech:item.lawgiver.got_all_modes master @a ~ ~ ~ 1 1
tag @s add HasLGsunburst