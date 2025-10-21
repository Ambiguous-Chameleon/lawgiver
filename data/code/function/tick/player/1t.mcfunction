# Checks for change in selected hotbar slot (ACL)
function ac_lib:mechanic/slot_check/main

# Checks for use of these items (ACL)
execute at @s if score @s ACUseBow matches 1.. run function code:ac_lib/use_item/bow

# Locates brewing stands player interacts with (ACL)
execute if score @s InteractBrew matches 1.. at @s run function ac_lib:mechanic/find/brewing_stand/do

# Player leaves the world (ACL)
execute at @s if score @s LeaveGame matches 1.. run function code:ac_lib/leave_game

# Player dies (ACL)
execute at @s if score @s Death matches 1.. run function code:ac_lib/death

# Checks for holding right click (ACL)
execute as @s[scores={RightClickHold=1..}] run function ac_lib:c_predicate/hold_right_click
advancement revoke @s only ac_lib:use_item/clock



# Checks for Lawgiver mode change
execute if score @s LawgiverMode matches 1.. at @s run function code:item/lawgiver/swap_mode/main

function ac_lib:reset/player
function code:reset/player