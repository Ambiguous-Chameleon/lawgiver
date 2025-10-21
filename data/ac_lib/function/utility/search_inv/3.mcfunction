scoreboard players add GameRef.Slot TempValue1 1
execute if score GameRef.Slot TempValue1 matches 1 run data modify storage ac_lib:utility data.search_inv.slot1 set value "legs"
execute if score GameRef.Slot TempValue1 matches 2 run data modify storage ac_lib:utility data.search_inv.slot1 set value "chest"
execute if score GameRef.Slot TempValue1 matches 3 run data modify storage ac_lib:utility data.search_inv.slot1 set value "head"