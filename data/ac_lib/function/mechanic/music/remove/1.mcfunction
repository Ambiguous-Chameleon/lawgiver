$data remove storage ac_lib:music data.entities[{uuid:$(uuid)}].songs[{name:"$(name)"}]
$execute if data storage ac_lib:music data.entities[{uuid:$(uuid)}].songs[] run return fail
$data remove storage ac_lib:music data.entities[{uuid:$(uuid)}]
tag @s remove ACPlayMusic