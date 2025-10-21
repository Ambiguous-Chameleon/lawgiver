# Detects when a player gains / loses an item in their inventory

advancement revoke @s only ac_lib:inventory_changed

# Checks for possession of certain items in mainhand, ties them to this player
#@ retool this system
#@function ac_lib:mechanic/slot_check/list/main

# Routes to other inventory change function, specific to things needed for this pack
function code:ac_lib/advancement/inventory_change/main