execute at @s[scores={ACRecoilX=1..}] run rotate @s ~1 ~
execute at @s[scores={ACRecoilX=..-1}] run rotate @s ~-1 ~
scoreboard players remove @s[scores={ACRecoilX=1..}] ACRecoilX 1
scoreboard players add @s[scores={ACRecoilX=..-1}] ACRecoilX 1