tag @s add ThisPlayer


# Trigger cheats (ACL)
function code:trigger/main

# Removes temporary fall resistance (ACL)
execute at @s[tag=TempFallResist] unless block ~ ~-0.1 ~ #ac_lib:non_solid run function ac_lib:effect/vanilla/attribute/fall_damage_multiplier/fall_resist/temp/remove

# Custom potion effect particles (ACL)

# Phasing
execute if score @s AC.CE.phasing matches 1.. at @s run function ac_lib:effect/particle/custom_potion/do {"color":"[0.020,1.000,0.576,1.00]"}
# -----
# -----
# -----


tag @s remove ThisPlayer