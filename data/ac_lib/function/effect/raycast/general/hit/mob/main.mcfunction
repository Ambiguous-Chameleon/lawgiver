tag @s add ThisMob

function ac_lib:effect/raycast/general/hit/mob/check/main with storage minecraft:game_ref Data.raycast

scoreboard players remove GameRef.RPierceCount TempValue1 1
execute if score GameRef.RPierceCount TempValue1 matches ..0 run scoreboard players set GameRef.RayDist TempValue1 0

tag @s remove ThisMob