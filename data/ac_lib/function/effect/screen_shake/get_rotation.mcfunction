$rotate @s ~$(x) ~$(y)

$scoreboard players set GameRef.X TempValue1 $(x)
$scoreboard players set GameRef.Y TempValue1 $(y)

$execute if score GameRef.X TempValue1 matches 1.. run scoreboard players remove @s ACRecoilX $(x)
$execute if score GameRef.X TempValue1 matches ..-1 run scoreboard players add @s ACRecoilX $(x)
$execute if score GameRef.Y TempValue1 matches 1.. run scoreboard players remove @s ACRecoilY $(y)
$execute if score GameRef.Y TempValue1 matches ..-1 run scoreboard players add @s ACRecoilY $(y)

scoreboard players reset GameRef.X TempValue1
scoreboard players reset GameRef.Y TempValue1