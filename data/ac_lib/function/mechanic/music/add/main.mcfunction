# Adds selected song to this entity's list of songs to play
$data merge storage ac_lib:music {data:{temp:{name:"$(name)",max_seconds:$(max_seconds),particles:"$(particles)",loop:"$(loop)",toggle:"$(toggle)"}}}
data modify storage ac_lib:music data.temp.uuid set from entity @s UUID
function ac_lib:mechanic/music/add/1 with storage ac_lib:music data.temp
data remove storage ac_lib:music data.temp
tag @s[tag=!Toggle] add ACPlayMusic
tag @s remove Toggle