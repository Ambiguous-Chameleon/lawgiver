playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 1 1
execute store result score GameRef.Count TempValue1 run data get block ~ ~ ~ Items[{Slot:3b}].count
execute store result block ~ ~ ~ Items[{Slot:3b}].count int 1 run scoreboard players remove GameRef.Count TempValue1 1
execute if score GameRef.Count TempValue1 matches ..0 run data remove block ~ ~ ~ Items[{Slot:3b}]
scoreboard players reset GameRef.Count TempValue1