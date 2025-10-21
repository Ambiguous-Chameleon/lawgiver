# Checks if this slot has the item. Moves on to the next slot if not
$execute unless data storage ac_lib:utility data.search_inv{slot_type:"armor"} if items entity @s $(slot_type).$(slot1) $(item) run function $(function) with storage ac_lib:utility data.search_inv
$execute if data storage ac_lib:utility data.search_inv{slot_type:"armor"} if items entity @s armor.$(slot3) $(item) run function $(function) with storage ac_lib:utility data.search_inv

execute if data storage ac_lib:utility data.search_inv{slot_type:"inventory"} if score GameRef.Slot TempValue1 matches 26.. run return fail
execute if data storage ac_lib:utility data.search_inv{slot_type:"hotbar"} if score GameRef.Slot TempValue1 matches 8.. run return fail
execute if data storage ac_lib:utility data.search_inv{slot_type:"armor"} run function ac_lib:utility/search_inv/3
execute if data storage ac_lib:utility data.search_inv{slot_type:"armor"} if score GameRef.Slot TempValue1 matches 4.. run return fail

execute unless data storage ac_lib:utility data.search_inv{slot_type:"armor"} store result storage ac_lib:utility data.search_inv.slot1 int 1 run scoreboard players add GameRef.Slot1 TempValue1 1
execute unless data storage ac_lib:utility data.search_inv{slot_type:"armor"} store result storage ac_lib:utility data.search_inv.slot2 int 1 run scoreboard players add GameRef.Slot2 TempValue1 1
function ac_lib:utility/search_inv/2 with storage ac_lib:utility data.search_inv
scoreboard players set GameRef.Slot TempValue1 0