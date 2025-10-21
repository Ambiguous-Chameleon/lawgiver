# Replaces blocks in this players path with versions that can be walked through
execute anchored eyes rotated ~ 0 positioned ^-1 ^ ^1 if block ~ ~ ~ #ac_lib:can_phase positioned ~ ~ ~ summon minecraft:item_frame at @s run function ac_lib:effect/custom_potion/list/phasing/block_remove
execute anchored eyes rotated ~ 0 positioned ^ ^ ^1 if block ~ ~ ~ #ac_lib:can_phase positioned ~ ~ ~ summon minecraft:item_frame at @s run function ac_lib:effect/custom_potion/list/phasing/block_remove
execute anchored eyes rotated ~ 0 positioned ^1 ^ ^1 if block ~ ~ ~ #ac_lib:can_phase positioned ~ ~ ~ summon minecraft:item_frame at @s run function ac_lib:effect/custom_potion/list/phasing/block_remove

execute anchored feet rotated ~ 0 positioned ^-1 ^ ^1 if block ~ ~ ~ #ac_lib:can_phase positioned ~ ~ ~ summon minecraft:item_frame at @s run function ac_lib:effect/custom_potion/list/phasing/block_remove
execute anchored feet rotated ~ 0 positioned ^ ^ ^1 if block ~ ~ ~ #ac_lib:can_phase positioned ~ ~ ~ summon minecraft:item_frame at @s run function ac_lib:effect/custom_potion/list/phasing/block_remove
execute anchored feet rotated ~ 0 positioned ^1 ^ ^1 if block ~ ~ ~ #ac_lib:can_phase positioned ~ ~ ~ summon minecraft:item_frame at @s run function ac_lib:effect/custom_potion/list/phasing/block_remove