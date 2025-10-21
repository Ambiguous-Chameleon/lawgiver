# Ends the raycast on collision, unless the raycast is set to ignore blocks
execute unless data storage minecraft:game_ref {Data:{raycast:{ignore_blocks:"true"}}} run scoreboard players set GameRef.RayDist TempValue1 0

# Runs the provided function on block collision
$execute if data storage minecraft:game_ref {Data:{raycast:{on_block_collide:"true"}}} run function $(function1) 

# Searches for specified block, if defined
execute unless data storage minecraft:game_ref Data.raycast.block_set run return fail
function ac_lib:effect/raycast/general/hit/block/check/array_1 with storage minecraft:game_ref Data.raycast
$execute as @s[tag=!FailRCheck] run function $(function1)
tag @s remove FailRCheck