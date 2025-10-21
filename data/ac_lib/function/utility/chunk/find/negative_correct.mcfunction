scoreboard players set GameRef.Math2 TempValue1 -16
scoreboard players operation GameRef.Math2 TempValue1 -= GameRef.Math1 TempValue1
scoreboard players operation GameRef.Math TempValue1 = GameRef.Math2 TempValue1
scoreboard players operation GameRef.Math TempValue1 *= -1 ACNumbers
scoreboard players reset GameRef.Math2 TempValue1