# Plays custom music
data modify storage ac_lib:music data.temp.uuid set from entity @s UUID
function ac_lib:mechanic/music/play/get_songs with storage ac_lib:music data.temp
data remove storage ac_lib:music data.temp