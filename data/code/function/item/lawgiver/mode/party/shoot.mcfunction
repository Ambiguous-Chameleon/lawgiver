execute if function ac_lib:c_predicate/hold_right_click run return fail

scoreboard players set @s RCCooldown 40
function ac_lib:mechanic/recoil/do {"amount":"1"}
playsound ac_tech:item.lawgiver.shoot master @a ~ ~ ~ 1 1

function ac_lib:mechanic/music/add/main {"name":"rocket","max_seconds":"74","particles":"true","loop":"true","toggle":"true"}

tellraw @s [{"text":"Now playing:","color":"gray"}]
tellraw @s [{"text":"Rocket - Kevin MacLeod"}]