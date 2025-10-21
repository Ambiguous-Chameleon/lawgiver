$data modify storage ac_lib:music data.temp.songs set from storage ac_lib:music data.entities[{uuid:$(uuid)}].songs
data modify storage ac_lib:music data.temp.song set from storage ac_lib:music data.temp.songs[0]
function ac_lib:mechanic/music/play/get_step with storage ac_lib:music data.temp.song