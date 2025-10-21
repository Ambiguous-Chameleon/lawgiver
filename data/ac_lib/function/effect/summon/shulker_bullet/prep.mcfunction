$data merge storage minecraft:game_ref {Data:{ACLib_Shulker_Bullet:{mode:"$(mode)",steps:$(steps),target:"$(target)",x_spread:"$(x_spread)",y_spread:"$(y_spread)"},Motion:{x:$(power),y:$(power),z:$(power)}}}

function ac_lib:effect/summon/shulker_bullet/get_spread with storage minecraft:game_ref Data.ACLib_Shulker_Bullet
function ac_lib:effect/summon/shulker_bullet/do with storage minecraft:game_ref Data.ACLib_Shulker_Bullet