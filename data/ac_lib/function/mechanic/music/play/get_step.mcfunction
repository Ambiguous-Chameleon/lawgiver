$scoreboard objectives add AC.Music.$(name) dummy
$execute store result storage ac_lib:music data.temp.song.beat int 1 run scoreboard players add @s AC.Music.$(name) 1
$execute if score @s AC.Music.$(name) matches $(max_seconds) run function ac_lib:mechanic/music/play/loop_query with storage ac_lib:music data.temp.song
function ac_lib:mechanic/music/play/play_step with storage ac_lib:music data.temp.song

# Plays next beat of all remaining songs in this entity's storage
data remove storage ac_lib:music data.temp.songs[0]
execute unless data storage ac_lib:music data.temp.songs[] run return fail
data modify storage ac_lib:music data.temp.song set from storage ac_lib:music data.temp.songs[0]
function ac_lib:mechanic/music/play/get_step with storage ac_lib:music data.temp.song