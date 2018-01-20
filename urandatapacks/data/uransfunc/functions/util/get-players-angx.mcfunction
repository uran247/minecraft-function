execute store result score @s AngX run data get entity @s Rotation[1] 1
scoreboard players operation @s[scores={AngX=181..}] AngX -= #360 Num
scoreboard players operation @s[scores={AngX=..-181}] AngX += #360 Num