execute if score @s LawgiverMode matches 1 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"semi","message":"Semi Auto"}
execute if score @s LawgiverMode matches 2 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"full_auto","message":"Full Auto"}
execute if score @s LawgiverMode matches 3 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"incendiary","message":"Incendiary"}
execute if score @s LawgiverMode matches 4 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"grenade","message":"Grenade"}
execute if score @s LawgiverMode matches 5 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"antigravity","message":"Antigravity"}
execute if score @s LawgiverMode matches 6 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"cryogenic","message":"Cryogenic"}
execute if score @s LawgiverMode matches 7 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"party","message":"Party"}
execute if score @s LawgiverMode matches 8 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"laser_beam","message":"Laser Beam"}
execute if score @s LawgiverMode matches 9 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"shotgun","message":"Shotgun"}
execute if score @s LawgiverMode matches 10 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"repulse","message":"Repulse"}
execute if score @s LawgiverMode matches 11 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"gas","message":"Gas"}
execute if score @s LawgiverMode matches 12 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"sunburst","message":"Sunburst"}
execute if score @s LawgiverMode matches 13 at @s run function code:item/lawgiver/swap_mode/swap {"mode":"hellfire","message":"Hellfire"}
scoreboard players reset @s LawgiverMode