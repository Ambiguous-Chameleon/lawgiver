# Removes selected song from this entity's list of songs to play
$scoreboard players reset @s AC.Music.$(name)
$data merge storage ac_lib:music {data:{temp:{name:"$(name)"}}}
data modify storage ac_lib:music data.temp.uuid set from entity @s UUID
function ac_lib:mechanic/music/remove/1 with storage ac_lib:music data.temp
data remove storage ac_lib:music data.temp