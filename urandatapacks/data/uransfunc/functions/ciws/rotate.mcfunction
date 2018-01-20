scoreboard players operation @s X = @e[tag=ciwsTg,limit=1] PosX
scoreboard players operation @s Y = @e[tag=ciwsTg,limit=1] PosY
scoreboard players operation @s Z = @e[tag=ciwsTg,limit=1] PosZ
scoreboard players operation @s X -= @s PosX
scoreboard players operation @s Y -= @s PosY
scoreboard players operation @s Z -= @s PosZ
execute as @s run function uransfunc:math/atan
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s atan

scoreboard players operation @s reg1 = @s X
scoreboard players operation @s reg1 *= @s X
scoreboard players operation @s input1 = @s Z
scoreboard players operation @s input1 *= @s Z
scoreboard players operation @s input1 += @s reg1
function uransfunc:math/sqrt
scoreboard players operation @s dis2D = @s ans
execute as @s run function uransfunc:math/atan-y
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s atanY
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s atanY
