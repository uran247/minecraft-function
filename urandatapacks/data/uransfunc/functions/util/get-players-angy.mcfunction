execute store result score @s AngY run data get entity @s Rotation[0] 1
scoreboard players operation @s[scores={AngY=181..}] AngY -= #360 Num
scoreboard players operation @s[scores={AngY=..-181}] AngY += #360 Num