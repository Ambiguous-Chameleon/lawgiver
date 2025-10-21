# Detects for selecting a different hotbar slot.
execute store result score @s RSlot1 run data get entity @s SelectedItemSlot
execute unless score @s RSlot1 = @s RSlot2 run tag @s add SlotSwitch
execute store result score @s RSlot2 run data get entity @s SelectedItemSlot

execute at @s[tag=SlotSwitch] run function ac_lib:mechanic/slot_check/list/main
tag @s remove SlotSwitch