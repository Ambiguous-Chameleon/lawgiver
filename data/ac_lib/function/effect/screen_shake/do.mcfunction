# Shakes the player's screen

$execute store result storage ac_lib:effect data.temp.screen_shake.x int 1 run random value $(x_range)
$execute store result storage ac_lib:effect data.temp.screen_shake.y int 1 run random value $(y_range)
function ac_lib:effect/screen_shake/get_rotation with storage ac_lib:effect data.temp.screen_shake
data remove storage ac_lib:effect data.temp