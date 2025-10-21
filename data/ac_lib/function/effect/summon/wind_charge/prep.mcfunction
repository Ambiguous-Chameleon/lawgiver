$data merge storage minecraft:game_ref {Data:{ACLib_WindCharge:{acceleration:$(acceleration),render:"$(render)",x_spread:"$(x_spread)",y_spread:"$(y_spread)"}}}

function ac_lib:effect/summon/wind_charge/get_spread with storage minecraft:game_ref Data.ACLib_WindCharge
function ac_lib:effect/summon/wind_charge/do with storage minecraft:game_ref Data.ACLib_WindCharge