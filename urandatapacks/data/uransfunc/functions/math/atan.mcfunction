scoreboard players operation @s trueX = @s X
scoreboard players operation @s trueX *= #-1 Num
scoreboard players operation @s squareX = @s trueX
scoreboard players operation @s squareZ = @s Z
scoreboard players operation @s squareX *= @s squareX
scoreboard players operation @s squareZ *= @s squareZ
execute if score @s squareZ >= @s squareX as @s[scores={Z=1..}] run function uransfunc:math/atan/arctan1
execute if score @s squareZ < @s squareX as @s[scores={trueX=1..}] run function uransfunc:math/atan/arctan2
execute if score @s squareZ >= @s squareX as @s[scores={Z=..-1}] run function uransfunc:math/atan/arctan3
execute if score @s squareZ < @s squareX as @s[scores={trueX=..-1}] run function uransfunc:math/atan/arctan4

execute as @s[scores={trueX=0,Z=..-1}] run scoreboard players set @s atan -180
execute as @s[scores={trueX=0,Z=1..}] run scoreboard players set @s atan 0
execute as @s[scores={trueX=..-1,Z=0}] run scoreboard players set @s atan -90
execute as @s[scores={trueX=1..,Z=0}] run scoreboard players set @s atan 90