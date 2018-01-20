execute as @e[tag=T1tg,limit=1,sort=nearest] run function uransfunc:util/get-entities-pos
function uransfunc:util/get-entities-pos

scoreboard players operation @s X = @e[tag=T1tg,limit=1,sort=nearest] PosX
scoreboard players operation @s Y = @e[tag=T1tg,limit=1,sort=nearest] PosY
scoreboard players operation @s Z = @e[tag=T1tg,limit=1,sort=nearest] PosZ
scoreboard players operation @s X -= @s PosX
scoreboard players operation @s Y -= @s PosY
scoreboard players operation @s Z -= @s PosZ
execute as @s run function uransfunc:math/atan

scoreboard players operation @s reg1 = @s X
scoreboard players operation @s reg1 *= @s X
scoreboard players operation @s input1 = @s Z
scoreboard players operation @s input1 *= @s Z
scoreboard players operation @s input1 += @s reg1
function uransfunc:math/sqrt
scoreboard players operation @s dis2D = @s ans
execute as @s run function uransfunc:math/atan-y

execute store result score @s T1rot run data get entity @s Rotation[0]
scoreboard players operation @p T1rot = @s atan
scoreboard players operation @p T1rot += #180 Num
execute if score @s T1rot < #0 Num run scoreboard players operation @s T1rot += #360 Num
execute if score @p T1rot < #0 Num run scoreboard players operation @p T1rot += #360 Num
execute if score @p T1rot > #360 Num run scoreboard players operation @p T1rot -= #360 Num
scoreboard players operation @p T1rot -= @s T1rot
execute if score @p T1rot < #0 Num run scoreboard players operation @p T1rot += #360 Num
execute if entity @p[scores={T1rot=2..358},distance=..2] run execute if score @p T1rot < #178 Num as @e[tag=Tr,distance=..3] at @s run tp @s ~ ~ ~ ~ ~2
execute if entity @p[scores={T1rot=2..358},distance=..2] run execute if score @p T1rot > #182 Num as @e[tag=Tr,distance=..3] at @s run tp @s ~ ~ ~ ~ ~-2

execute store result score @s AngY run data get entity @e[tag=B,limit=1,distance=..3] Pose.RightArm[0]
scoreboard players operation @s atanY *= #-1 Num
execute if score @s AngY < @s atanY run scoreboard players add @s[scores={AngY=..25}] AngY 1
execute if score @s AngY > @s atanY run scoreboard players remove @s[scores={AngY=-12..}] AngY 1
execute store result entity @e[tag=B,limit=1,distance=..3] Pose.RightArm[0] float 1 run scoreboard players get @s AngY