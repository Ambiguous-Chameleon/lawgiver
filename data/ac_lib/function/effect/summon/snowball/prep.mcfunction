$data merge storage minecraft:game_ref {Data:{ACLib_Snowball:{acceleration:$(acceleration),render:"$(render)",x_spread:"$(x_spread)",y_spread:"$(y_spread)"},Motion:{x:$(power),y:$(power),z:$(power)}}}

function ac_lib:effect/summon/snowball/get_spread with storage minecraft:game_ref Data.ACLib_Snowball
function ac_lib:effect/summon/snowball/do with storage minecraft:game_ref Data.ACLib_Snowball