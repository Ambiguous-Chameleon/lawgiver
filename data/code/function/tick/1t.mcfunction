execute as @a run function code:tick/player/1t
execute as @e[type=#ac_lib:tick_list] run function code:tick/entity/1t

execute unless score GameRef.WorldInitAC ACGeneric1 matches 1 run function ac_lib:init/world
execute unless score GameRef.WorldInit ACGeneric1 matches 1 run function code:init/world

execute if score GameRef.MobGriefing ACGeneric1 matches 1.. run function ac_lib:effect/restore_mob_griefing

function ac_lib:reset/world
function code:reset/world

schedule function code:tick/1t 1t replace