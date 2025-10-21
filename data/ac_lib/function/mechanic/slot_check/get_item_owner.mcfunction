execute store result storage ac_lib:item_modifier data.temp.player_id int 1 run scoreboard players get @s PlayerID
$item modify entity @s $(slot_type).$(slot1) ac_lib:get_item_owner
data remove storage ac_lib:item_modifier data.temp