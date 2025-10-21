execute at @s[scores={ACRecoilY=1..}] run rotate @s ~ ~1
execute at @s[scores={ACRecoilY=..-1}] run rotate @s ~ ~-1
scoreboard players remove @s[scores={ACRecoilY=1..}] ACRecoilY 1
scoreboard players add @s[scores={ACRecoilY=..-1}] ACRecoilY 1