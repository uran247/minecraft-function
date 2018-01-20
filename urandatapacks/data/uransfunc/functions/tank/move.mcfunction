#スコアを見て戦車を前進か後進
execute store result score @s input1 run data get entity @e[tag=hullB,sort=nearest,limit=1,distance=..2] Rotation[0]
execute if score @s input1 < #-180 Num run scoreboard players add @s input1 360
execute if score @s input1 > #180 Num run scoreboard players remove @s input1 360

#execute store result score hull.Rot Tank1 run data get entity @e[tag=hullB,sort=nearest,limit=1,distance=..2] Rotation[0]
#execute if score hull.Rot Tank1 > #180 Num run scoreboard players operation hull.Rot Tank1 -= #360 Num
#execute if score hull.Rot Tank1 < #-180 Num run scoreboard players operation hull.Rot Tank1 += #360 Num

function uransfunc:math/sin2
function uransfunc:math/cos2

scoreboard players operation @s speedX = @s sin
scoreboard players operation @s speedZ = @s cos

scoreboard players operation @s speedX *= @p[distance=..2] T1move
scoreboard players operation @s speedX *= #-1 Num
scoreboard players operation @s speedZ *= @p[distance=..2] T1move

data merge entity @s {NoAI:0}
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s speedX
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s speedZ
