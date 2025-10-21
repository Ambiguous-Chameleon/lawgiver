# Checks if player has been holding right click since last tick

tag @s remove RCFirstPass
scoreboard players remove @s[scores={RightClickHold=1..}] RightClickHold 1
execute unless score @s RightClickHold = @s RightClickHold run tag @s add RCFirstPass
execute unless score @s RightClickHold = @s RightClickHold run scoreboard players set @s RightClickHold 2
execute as @s[tag=RCFirstPass] run return fail

# If right click was held since last press, success!
execute as @s[advancements={ac_lib:use_item/clock=true},scores={RightClickHold=1..}] if function ac_lib:c_pred_supp/hold_right_click/pass run return 1

# If right click was not held down since last press, resets RightClickHold.
execute as @s[scores={RightClickHold=..0}] unless function ac_lib:c_pred_supp/hold_right_click/fail run return 0