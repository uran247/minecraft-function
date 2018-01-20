scoreboard players set @s[scores={loop=1}] reg2 26565
scoreboard players set @s[scores={loop=2}] reg2 14036
scoreboard players set @s[scores={loop=3}] reg2 7125
scoreboard players set @s[scores={loop=4}] reg2 3576
scoreboard players set @s[scores={loop=5}] reg2 1790
scoreboard players set @s[scores={loop=6}] reg2 895
scoreboard players set @s[scores={loop=7}] reg2 448

scoreboard players set @s[scores={loop=1}] reg3 2
scoreboard players set @s[scores={loop=2}] reg3 4
scoreboard players set @s[scores={loop=3}] reg3 8
scoreboard players set @s[scores={loop=4}] reg3 16
scoreboard players set @s[scores={loop=5}] reg3 32
scoreboard players set @s[scores={loop=6}] reg3 64
scoreboard players set @s[scores={loop=7}] reg3 128

execute if score @s reg1 > @s input1 run scoreboard players set @s reg4 -1
execute if score @s reg1 < @s input1 run scoreboard players set @s reg4 1
execute if score @s reg1 = @s input1 run scoreboard players set @s reg4 0

scoreboard players operation @s reg2 *= @s reg4
scoreboard players operation @s reg1 += @s reg2

scoreboard players operation @s reg6 = @s ans1
scoreboard players operation @s reg5 = @s ans2
scoreboard players operation @s reg5 /= @s reg3
scoreboard players operation @s reg6 /= @s reg3
scoreboard players operation @s[scores={reg4=1}] reg5 *= #-1 Num
scoreboard players operation @s[scores={reg4=-1}] reg6 *= #-1 Num
scoreboard players set @s[scores={reg4=0}] reg5 0
scoreboard players set @s[scores={reg4=0}] reg6 0
scoreboard players operation @s ans1 += @s reg5
scoreboard players operation @s ans2 += @s reg6

scoreboard players add @s loop 1

execute as @s[scores={loop=..7}] run function uransfunc:math/cordic/cordic
