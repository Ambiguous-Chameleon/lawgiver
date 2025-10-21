# Detects when a player gains / loses an item in their inventory

# Searches for Lawgivers without an owner, ties them to this player
function ac_lib:utility/search_inv/do {"item":"*[minecraft:custom_data~{PlayerID:0}]","locations":"[inventory,hotbar]","function":"code:item/lawgiver/get_id"}