# Finds the owner of the most-current raycast being run this tick
# Before this is run, "/function ac_lib:effect/raycast/general/save_data/save/main" must be run first!
tag @e[tag=DidRaycast] remove ThisRaycaster
data modify storage minecraft:game_ref Data.raycast2.id_find set from storage minecraft:game_ref Data.raycast2.ids[0]
function ac_lib:effect/raycast/general/find_raycaster/find with storage minecraft:game_ref Data.raycast2