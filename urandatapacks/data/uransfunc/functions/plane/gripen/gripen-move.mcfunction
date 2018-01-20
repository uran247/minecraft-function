#X軸回転のsincos計算
scoreboard players operation @s input1 = @s AngX
scoreboard players operation @s input1 *= #-1 Num
#execute store result score @s input1 run data get entity @s Pose.RightArm[0] 1
scoreboard players add @s[scores={input1=..-180}] input1 360
scoreboard players remove @s[scores={input1=180..}] input1 360
function uransfunc:math/sin2
scoreboard players operation @s sinX = @s sin
function uransfunc:math/cos2
scoreboard players operation @s cosX = @s cos

#Y軸回転のsincos計算
scoreboard players operation @s input1 = @s AngY
#execute store result score @s input1 run data get entity @s Pose.RightArm[1] 1
scoreboard players add @s[scores={input1=..-180}] input1 360
scoreboard players remove @s[scores={input1=180..}] input1 360
function uransfunc:math/sin2
scoreboard players operation @s sinY = @s sin
function uransfunc:math/cos2
scoreboard players operation @s cosY = @s cos

#Z軸回転のsincos計算
scoreboard players operation @s input1 = @s AngZ
#execute store result score @s input1 run data get entity @s Pose.RightArm[2] 1
scoreboard players operation @s input1 *= #-1 Num
scoreboard players add @s[scores={input1=..-180}] input1 360
scoreboard players remove @s[scores={input1=180..}] input1 360
function uransfunc:math/sin2
scoreboard players operation @s sinZ = @s sin
function uransfunc:math/cos2
scoreboard players operation @s cosZ = @s cos

#各sin,cosからxベクトル算出
scoreboard players operation @s speedX = @s cosX
scoreboard players operation @s speedX *= @s sinY
scoreboard players operation @s reg1 = @s cosY
scoreboard players operation @s reg1 *= @s sinX
scoreboard players operation @s reg1 *= @s sinZ
scoreboard players operation @s reg1 /= #1000 Num
scoreboard players operation @s speedX += @s reg1

#各sin,cosからyベクトル算出
scoreboard players operation @s speedY = @s cosZ
scoreboard players operation @s speedY *= @s sinX
scoreboard players operation @s speedY *= #-1 Num

#各sin,cosからzベクトル算出
scoreboard players operation @s speedZ = @s cosX
scoreboard players operation @s speedZ *= @s cosY
scoreboard players operation @s reg1 = @s sinX
scoreboard players operation @s reg1 *= @s sinY
scoreboard players operation @s reg1 *= @s sinZ
scoreboard players operation @s reg1 /= #1000 Num
scoreboard players operation @s speedZ -= @s reg1

#速度の絶対値をかける
scoreboard players operation @s speedX /= #-10000 Num
scoreboard players operation @s speedY /= #-10000 Num
scoreboard players operation @s speedZ /= #10000 Num

#移動量を出す
scoreboard players operation @s travelX = @s speedX 
scoreboard players operation @s travelY = @s speedY
scoreboard players operation @s travelZ = @s speedZ
scoreboard players operation @s travelX *= @s speed
scoreboard players operation @s travelY *= @s speed
scoreboard players operation @s travelZ *= @s speed
