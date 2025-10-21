# Simulates the particles given off by a player when they are under the effects of a potion

execute unless predicate ac_lib:rng/25_75 run return fail

# Get random position
execute store result storage ac_lib:particle data.temp.x float 0.01 run random value -50..50
execute store result storage ac_lib:particle data.temp.y float 0.01 run random value 0..200
execute store result storage ac_lib:particle data.temp.z float 0.01 run random value -50..50
$data merge storage ac_lib:particle {data:{temp:{color:$(color)}}}

execute as @s[gamemode=!spectator] run function ac_lib:effect/particle/custom_potion/1 with storage ac_lib:particle data.temp

data remove storage ac_lib:particle data.temp