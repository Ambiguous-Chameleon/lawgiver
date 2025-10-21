# Initializes new entities (ACL)
execute as @s[tag=!EntityInitAC] run function ac_lib:init/entity
execute as @s[tag=!EntityInit] run function code:init/entity

# Entities that need vehicles (ACL)
execute as @s[tag=NeedsVehicle] run function ac_lib:mechanic/vehicle_check

# ACLib force entities (ACL)
execute as @s[tag=Falling,tag=ACLib.Force] if predicate ac_lib:on_ground on passengers if score @s ACFreeze matches 1.. run function code:item/lawgiver/mode/cryogenic/shatter
execute as @s[tag=ACLib.Force] run function ac_lib:effect/force/ground_check

# Funnels this entity to proper tick hub (ACL)
execute as @s[type=minecraft:armor_stand] run function code:tick/entity/1t/armor_stand
execute as @s[type=minecraft:arrow] run function code:tick/entity/1t/arrow
execute as @s[type=minecraft:item_display] run function code:tick/entity/1t/item_display
execute as @s[type=minecraft:lingering_potion] run function code:tick/entity/1t/lingering_potion
execute as @s[type=minecraft:marker] run function code:tick/entity/1t/marker



# Shatters frozen entities that fall a distance
execute at @s if score @s ACFreeze matches 1.. run function code:item/lawgiver/mode/cryogenic/tick/fall_detect
execute as @s[type=minecraft:item,tag=ACLib.Force] on passengers if score @s ACFreeze matches 1.. on vehicle as @s[type=minecraft:item,tag=ACLib.Force] run function code:item/lawgiver/mode/cryogenic/tick/fall_detect

function ac_lib:reset/entity
function code:reset/entity