execute store result score @s input1 run data get entity @s Pose.RightArm[0] 1
execute if score @s input1 < #-180 Num run scoreboard players add @s input1 360
execute if score @s input1 > #180 Num run scoreboard players remove @s input1 360
function uransfunc:math/sin2
scoreboard players operation SINX reg1 = @s sin
function uransfunc:math/cos2
scoreboard players operation COSX reg1 = @s cos

execute store result score @s input1 run data get entity @s Pose.RightArm[1] 1
execute if score @s input1 < #-180 Num run scoreboard players add @s input1 360
execute if score @s input1 > #180 Num run scoreboard players remove @s input1 360
function uransfunc:math/sin2
scoreboard players operation SINY reg1 = @s sin
function uransfunc:math/cos2
scoreboard players operation COSY reg1 = @s cos

execute store result score @s input1 run data get entity @s Pose.RightArm[2] 1
scoreboard players operation @s input1 *= #-1 Num
execute if score @s input1 < #-180 Num run scoreboard players add @s input1 360
execute if score @s input1 > #180 Num run scoreboard players remove @s input1 360
function uransfunc:math/sin2
scoreboard players operation SINZ reg1 = @s sin
function uransfunc:math/cos2
scoreboard players operation COSZ reg1 = @s cos

scoreboard players operation @s speedX = SINY reg1
scoreboard players operation @s speedX *= COSX reg1
scoreboard players operation @s speedX /= #1000 Num
scoreboard players operation @s speedY = SINX reg1
scoreboard players operation @s speedZ = COSY reg1
scoreboard players operation @s speedZ *= COSX reg1

scoreboard players operation REG1 reg1 = SINZ reg1
scoreboard players operation REG2 reg1 = SINZ reg1
scoreboard players operation REG1 reg1 *= @s speedY
scoreboard players operation REG2 reg1 *= @s speedX
scoreboard players operation @s speedX *= COSZ reg1
scoreboard players operation @s speedY *= COSZ reg1
scoreboard players operation @s speedX -= REG1 reg1
scoreboard players operation @s speedY += REG2 reg1


scoreboard players operation @s speedX *= @s speed
scoreboard players operation @s speedY *= @s speed
scoreboard players operation @s speedZ *= @s speed

execute store result entity @s Motion[0] double -0.0000001 run scoreboard players get @s speedX
execute store result entity @s Motion[1] double -0.0000001 run scoreboard players get @s speedY
execute store result entity @s Motion[2] double 0.0000001 run scoreboard players get @s speedZ

