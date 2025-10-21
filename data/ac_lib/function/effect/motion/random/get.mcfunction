# Applies random motion to this entity based on input parameters
$execute store result storage minecraft:game_ref Data.motion.random.x double 0.1 store result score GameRef.Num TempValue1 run random value $(x)
$execute store result storage minecraft:game_ref Data.motion.random.y double 0.1 store result score GameRef.Num TempValue1 run random value $(y)
$execute store result storage minecraft:game_ref Data.motion.random.z double 0.1 store result score GameRef.Num TempValue1 run random value $(z)
function ac_lib:effect/motion/random/apply with storage minecraft:game_ref Data.motion.random
data remove storage minecraft:game_ref Data.motion.random