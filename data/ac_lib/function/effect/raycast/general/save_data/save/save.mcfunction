$tag @s add ray_$(id)
$data modify storage minecraft:game_ref Data.raycast2.ids insert 0 value $(id)
$data modify storage minecraft:raycast_mem$(id) Data.raycast set from storage minecraft:game_ref Data.raycast