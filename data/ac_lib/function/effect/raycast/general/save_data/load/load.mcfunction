$tag @s remove ray_$(id)
data remove storage minecraft:game_ref Data.raycast2.ids[0]
$data modify storage minecraft:game_ref Data.raycast set from storage minecraft:raycast_mem$(id) Data.raycast
$data remove storage minecraft:raycast_mem$(id) Data