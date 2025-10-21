$data merge storage minecraft:game_ref {Data:{ACLib_Fireball:{acceleration:$(acceleration),destroy:$(destroy),explosion_power:$(explosion_power),render:"$(render)",x_spread:$(x_spread),y_spread:$(y_spread)}}}

function ac_lib:effect/summon/fireball/get_spread with storage minecraft:game_ref Data.ACLib_Fireball
function ac_lib:effect/summon/fireball/do with storage minecraft:game_ref Data.ACLib_Fireball