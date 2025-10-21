$data merge storage minecraft:game_ref {Data:{ACLib_SFireball:{acceleration:$(acceleration),render:"$(render)",x_spread:"$(x_spread)",y_spread:"$(y_spread)"}}}

function ac_lib:effect/summon/small_fireball/get_spread with storage minecraft:game_ref Data.ACLib_SFireball
function ac_lib:effect/summon/small_fireball/do with storage minecraft:game_ref Data.ACLib_SFireball