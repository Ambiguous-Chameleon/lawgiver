execute if score @s CDModeSwap matches 1.. run return fail
scoreboard players set @s CDModeSwap 2

# Opens a dialog menu allowing player to select Lawgiver's mode
scoreboard players enable @s LawgiverMode

data merge storage minecraft:game_ref {data:{temp:{dialog:{text_incendiary:"???",icon_incendiary:"\uE017",text_grenade:"???",icon_grenade:"\uE017",text_antigravity:"???",icon_antigravity:"\uE017",text_cryogenic:"???",icon_cryogenic:"\uE017",text_laser_beam:"???",icon_laser_beam:"\uE017",text_shotgun:"???",icon_shotgun:"\uE017",text_repulse:"???",icon_repulse:"\uE017",text_gas:"???",icon_gas:"\uE017",text_hellfire:"???",icon_hellfire:"\uE017",text_sunburst:"???",text_party:"???",icon_party:"\uE017",icon_sunburst:"\uE017"}}}}
execute as @s[tag=HasLGincendiary] run data merge storage minecraft:game_ref {data:{temp:{dialog:{text_incendiary:"Incendiary",icon_incendiary:"\uE006"}}}}
execute as @s[tag=HasLGgrenade] run data merge storage minecraft:game_ref {data:{temp:{dialog:{text_grenade:"Grenade",icon_grenade:"\uE007"}}}}
execute as @s[tag=HasLGantigravity] run data merge storage minecraft:game_ref {data:{temp:{dialog:{text_antigravity:"Antigravity",icon_antigravity:"\uE008"}}}}
execute as @s[tag=HasLGcryogenic] run data merge storage minecraft:game_ref {data:{temp:{dialog:{text_cryogenic:"Cryogenic",icon_cryogenic:"\uE009"}}}}
execute as @s[tag=HasLGlaser_beam] run data merge storage minecraft:game_ref {data:{temp:{dialog:{text_laser_beam:"Laser Beam",icon_laser_beam:"\uE011"}}}}
execute as @s[tag=HasLGshotgun] run data merge storage minecraft:game_ref {data:{temp:{dialog:{text_shotgun:"Shotgun",icon_shotgun:"\uE012"}}}}
execute as @s[tag=HasLGrepulse] run data merge storage minecraft:game_ref {data:{temp:{dialog:{text_repulse:"Repulse",icon_repulse:"\uE013"}}}}
execute as @s[tag=HasLGgas] run data merge storage minecraft:game_ref {data:{temp:{dialog:{text_gas:"Gas",icon_gas:"\uE014"}}}}
execute as @s[tag=HasLGhellfire] run data merge storage minecraft:game_ref {data:{temp:{dialog:{text_hellfire:"Hellfire",icon_hellfire:"\uE016"}}}}
execute as @s[tag=HasLGparty] run data merge storage minecraft:game_ref {data:{temp:{dialog:{text_party:"Party",icon_party:"\uE010"}}}}
execute as @s[tag=HasLGsunburst] run data merge storage minecraft:game_ref {data:{temp:{dialog:{text_sunburst:"Sunburst",icon_sunburst:"\uE015"}}}}
function code:item/lawgiver/swap_mode/dialog2 with storage minecraft:game_ref data.temp.dialog
data remove storage minecraft:game_ref data.temp