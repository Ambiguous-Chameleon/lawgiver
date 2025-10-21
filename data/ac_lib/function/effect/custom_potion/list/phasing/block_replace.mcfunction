data modify storage minecraft:game_ref data.block set from entity @s block_state.Name
function ac_lib:effect/custom_potion/list/phasing/block_replace2 with storage minecraft:game_ref data
data remove storage minecraft:game_ref data.block
kill @s