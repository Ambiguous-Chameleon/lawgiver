# To be used with "function ac_lib:utility/search_inv/do"
# Searches a player's inventories for a specific item
$execute if items entity @s inventory.* *[$(item)] run return 1
$execute if items entity @s hotbar.* *[$(item)] run return 1
$execute if items entity @s weapon.offhand *[$(item)] run return 1
$execute if items entity @s armor.* *[$(item)] run return 1
$execute if data entity @s EnderItems[$(item)] run return 1