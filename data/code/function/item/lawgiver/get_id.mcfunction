# Ties the gun to the player via PlayerID
function ac_lib:mechanic/slot_check/get_item_owner with storage ac_lib:utility data.search_inv

# Puts player's name into item lore, for easy identification at a glance
loot insert 787878 -64 787878 loot ac_lib:get_head
data modify storage ac_lib:utility data.search_inv.name set from block 787878 -64 787878 Items[0].components.minecraft:profile.name
function code:item/lawgiver/get_name with storage ac_lib:utility data.search_inv
item replace block 787878 -64 787878 container.0 with minecraft:air
playsound ac_tech:item.lawgiver.new_user master @a ~ ~ ~ 1 1