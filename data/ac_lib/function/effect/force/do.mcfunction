$data merge storage ac_lib:effect {data:{temp:{force:{x:$(x),y:$(y),z:$(z)}}}}
tag @s add ThisEntity
$execute summon minecraft:marker run function ac_lib:effect/force/$(dir)/$(type)/get_info
tag @s remove ThisEntity
data remove storage ac_lib:effect data.temp