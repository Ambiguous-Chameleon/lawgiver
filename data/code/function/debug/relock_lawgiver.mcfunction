# Takes away all of this player's unlocked Lawgiver modes
tag @s remove HasLGincendiary
tag @s remove HasLGgrenade
tag @s remove HasLGantigravity
tag @s remove HasLGcryogenic
tag @s remove HasLGlaser_beam
tag @s remove HasLGshotgun
tag @s remove HasLGrepulse
tag @s remove HasLGgas
tag @s remove HasLGhellfire
tag @s remove HasLGsunburst
tag @s remove HasLGparty

scoreboard players reset @s LGAllModes

advancement revoke @s from code:gui/lawgiver/root
advancement grant @s only code:gui/lawgiver/root