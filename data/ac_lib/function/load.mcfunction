### Schedules tick functions. ###
schedule function code:tick/2t 1s replace
schedule function code:tick/5t 1s replace
schedule function code:tick/10t 1s replace
schedule function code:tick/20t 1s replace
schedule function code:tick/5s 1s replace
schedule function code:tick/1t 1s replace

execute if score GameRef.LoadedOnce TempValue1 matches 1 as @a run function code:ac_lib/load_message
scoreboard players set GameRef.LoadedOnce TempValue1 1


### Objectives ###
scoreboard objectives add ACGenericID dummy
scoreboard objectives add PlayerID dummy
scoreboard objectives add RaycastID dummy

scoreboard objectives add RightClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add RightClickHold dummy
scoreboard objectives add RCCooldown dummy
scoreboard objectives add ACUseTrident minecraft.used:minecraft.trident
scoreboard objectives add ACUseBow minecraft.used:minecraft.bow
scoreboard objectives add TakeDamage minecraft.custom:minecraft.damage_taken
scoreboard objectives add Death deathCount
scoreboard objectives add InteractBrew minecraft.custom:minecraft.interact_with_brewingstand
scoreboard objectives add ACSwim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game

scoreboard objectives add ACRecoilX dummy
scoreboard objectives add ACRecoilY dummy

scoreboard objectives add TempValue1 dummy
scoreboard objectives add TempValue2 dummy
scoreboard objectives add TempValue3 dummy
scoreboard objectives add TempValue4 dummy

scoreboard objectives add ACGeneric1 dummy
scoreboard objectives add ACGeneric2 dummy
scoreboard objectives add ACGeneric3 dummy
scoreboard objectives add ACGeneric4 dummy

scoreboard objectives add InitDelay dummy

scoreboard objectives add RSlot1 dummy
scoreboard objectives add RSlot2 dummy

scoreboard objectives add ACAnimate1 dummy
scoreboard objectives add ACAnimate2 dummy
scoreboard objectives add ACAnimate3 dummy

scoreboard objectives add ACFreeze dummy

# Loads a set of numbers inside the specified range
scoreboard objectives remove ACNumbers
scoreboard objectives add ACNumbers dummy
function ac_lib:load/numbers/main {"range_min":"-100","range_max":"100"}

# Custom potions/effects (CE = CustomEffect)
scoreboard objectives add AC.CE.phasing dummy


### Teams ###
team add ACAqua
team modify ACAqua color aqua

team add ACNoCollision
team modify ACNoCollision collisionRule never


# Default values for some effect functions
data merge storage minecraft:game_ref {Data:{ACLib_Fireball:{acceleration:0.1,destroy:true,explosion_power:1,x_spread:"0..0",y_spread:"0..0"},ACLib_SFireball:{acceleration:0.1,render:"minecraft:fire_charge",x_spread:"0..0",y_spread:"0..0"},ACLib_Snowball:{render:"minecraft:snowball",x_spread:"0..0",y_spread:"0..0"},ACLib_WindCharge:{acceleration:0.1,x_spread:"0..0",y_spread:"0..0"}}}
function ac_lib:utility/search_inv/set_defaults