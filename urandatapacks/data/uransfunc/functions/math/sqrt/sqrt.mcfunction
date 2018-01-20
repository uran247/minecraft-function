scoreboard players operation @s reg1 = @s ans
scoreboard players operation @s reg2 = @s input1
scoreboard players operation @s reg2 /= @s reg1
scoreboard players operation @s reg1 -= @s reg2
scoreboard players operation @s reg1 /= #2 Num
scoreboard players operation @s ans -= @s reg1

scoreboard players remove @s loop 1
execute unless score @s reg1 = #0 Num run execute if score @s loop > #0 Num run function uransfunc:math/sqrt/sqrt