# Runs a search to find specified item

$function ac_lib:utility/search_inv_quick/do {"item":"$(item)"}
execute if score GameRef.Boolean TempValue1 matches 0 run return fail
$data merge storage ac_lib:utility {data:{search_inv:{item:"$(item)",locations:$(locations),function:"$(function)"}}}

scoreboard players set GameRef.Slot1 TempValue1 0
scoreboard players set GameRef.Slot2 TempValue1 9

$execute if data storage ac_lib:utility data.search_inv{locations:["inventory"]} if items entity @s inventory.* $(item) run data merge storage ac_lib:utility {data:{search_inv:{slot_type:"inventory",slot1:0,slot2:9,slot3:feet}}}
$execute if data storage ac_lib:utility data.search_inv{locations:["inventory"]} if items entity @s inventory.* $(item) run function ac_lib:utility/search_inv/2 with storage ac_lib:utility data.search_inv

$execute if data storage ac_lib:utility data.search_inv{locations:["hotbar"]} if items entity @s hotbar.* $(item) run scoreboard players set GameRef.Slot2 TempValue1 0
$execute if data storage ac_lib:utility data.search_inv{locations:["hotbar"]} if items entity @s hotbar.* $(item) run data merge storage ac_lib:utility {data:{search_inv:{slot_type:"hotbar",slot1:0,slot2:0,slot3:feet}}}
$execute if data storage ac_lib:utility data.search_inv{locations:["hotbar"]} if items entity @s hotbar.* $(item) run function ac_lib:utility/search_inv/2 with storage ac_lib:utility data.search_inv

$execute if data storage ac_lib:utility data.search_inv{locations:["armor"]} if items entity @s armor.* $(item) run data merge storage ac_lib:utility {data:{search_inv:{slot_type:"armor",slot1:0,slot2:0,slot3:feet}}}
$execute if data storage ac_lib:utility data.search_inv{locations:["armor"]} if items entity @s armor.* $(item) run function ac_lib:utility/search_inv/2 with storage ac_lib:utility data.search_inv

$execute if data storage ac_lib:utility data.search_inv{locations:["offhand"]} if items entity @s weapon.offhand $(item) run function $(function) {"slot_type":"weapon","slot1":"offhand"}

$execute if data storage ac_lib:utility data.search_inv{locations:["cursor"]} if items entity @s player.cursor $(item) run data merge storage ac_lib:utility {data:{search_inv:{slot_type:"cursor"}}}
$execute if data storage ac_lib:utility data.search_inv{locations:["cursor"]} if items entity @s player.cursor $(item) run function $(function) with storage ac_lib:utility data.search_inv

scoreboard players reset GameRef.Slot1 TempValue1
scoreboard players reset GameRef.Slot2 TempValue1
data remove storage ac_lib:utility data.search_inv