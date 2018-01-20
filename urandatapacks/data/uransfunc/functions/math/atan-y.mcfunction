scoreboard players operation @s trueY = @s Y
scoreboard players operation @s trueY *= #-1 Num
scoreboard players operation @s absY = @s trueY
scoreboard players operation @s[scores={absY=..-1}] absY *= #-1 Num

execute if score @s dis2D >= @s absY as @s[scores={dis2D=1..}] run function uransfunc:math/atany/arctan1
execute if score @s dis2D < @s absY as @s[scores={trueY=1..}] run function uransfunc:math/atany/arctan2
execute if score @s dis2D < @s absY as @s[scores={trueY=..-1}] run function uransfunc:math/atany/arctan4

execute as @s[scores={trueY=0}] run scoreboard players set @s atanY 0
execute as @s[scores={dis2D=0,trueY=1..}] run scoreboard players set @s atanY 90
execute as @s[scores={dis2D=0,trueY=..-1}] run scoreboard players set @s atanY -90
