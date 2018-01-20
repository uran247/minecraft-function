kill @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",tag:{display:{Name:"APFSDS"}}}},distance=..5]
summon armor_stand ~ ~ ~ {CustomName:Shell,Tags:[T1Shell,T1,APFSDS],Invisible:1,NoGravity:1,ArmorItems:[{},{},{},{id:diamond_axe,Damage:10,Count:1b,tag:{Unbreakable:1}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[90f,0f,0f]}}
execute store result entity @e[tag=T1Shell,limit=1,distance=..3] Pose.Head[0] float 1 run data get entity @s Pose.RightArm[0]

tp @e[tag=T1Shell,distance=..3,limit=1] ~ ~1.2 ~ ~ ~

execute store result score @s input1 run data get entity @s Rotation[0]
execute if score @s input1 < #-180 Num run scoreboard players add @s input1 360
execute if score @s input1 > #180 Num run scoreboard players remove @s input1 360
function uransfunc:math/sin2
function uransfunc:math/cos2
scoreboard players operation @e[tag=T1Shell,distance=..3,limit=1] speedX = @s sin
scoreboard players operation @e[tag=T1Shell,distance=..3,limit=1] speedZ = @s cos

execute store result score @s input1 run data get entity @s Pose.RightArm[0]
function uransfunc:math/sin2
function uransfunc:math/cos2

scoreboard players operation @e[tag=T1Shell,distance=..3,limit=1] speedX *= @s cos
scoreboard players operation @e[tag=T1Shell,distance=..3,limit=1] speedZ *= @s cos
scoreboard players operation @e[tag=T1Shell,distance=..3,limit=1] speedY = @s sin
scoreboard players operation @e[tag=T1Shell,distance=..3,limit=1] speedX /= #1000 Num
scoreboard players operation @e[tag=T1Shell,distance=..3,limit=1] speedZ /= #1000 Num

execute store result score @e[tag=T1Shell,distance=..3,limit=1] PosX run data get entity @e[tag=T1Shell,distance=..3,limit=1] Pos[0] 1000
execute store result score @e[tag=T1Shell,distance=..3,limit=1] PosY run data get entity @e[tag=T1Shell,distance=..3,limit=1] Pos[1] 1000
execute store result score @e[tag=T1Shell,distance=..3,limit=1] PosZ run data get entity @e[tag=T1Shell,distance=..3,limit=1] Pos[2] 1000

scoreboard players set @e[tag=T1Shell,distance=..3,limit=1] HP 5
scoreboard players set @p[distance=..3] T1cooltime 80

execute as @e[tag=T1Shell,distance=..3,limit=1] at @s run function uransfunc:tank/gun/fire
execute at @e[tag=T1Shell,distance=..3,limit=1] run particle flame ~ ~ ~ 1 1 1 0 2000 force




#execute @e[tag=T1Shell,r=4,c=1] ~ ~ ~ function tank:angle/angle
#execute @e[tag=T1Shell,r=4,c=1] ~ ~ ~ function tank:angle/angleY
#execute @e[tag=T1Shell,r=4,c=1] ~ ~ ~ function math:sin
#execute @e[tag=T1Shell,r=4,c=1] ~ ~ ~ function math:cos
#execute @e[tag=T1Shell,r=4,c=1] ~ ~ ~ function tank:gun/sinY
#execute @e[tag=T1Shell,r=4,c=1] ~ ~ ~ function tank:gun/cosY
#execute @e[tag=T1Shell,r=4,c=1] ~ ~ ~ function tank:turret/depression
#scoreboard players operation @e[tag=T1Shell,r=4,c=1] sin *= @e[tag=T1Shell,r=4,c=1] cosY
#scoreboard players operation @e[tag=T1Shell,r=4,c=1] cos *= @e[tag=T1Shell,r=4,c=1] cosY
#scoreboard players operation @e[tag=T1Shell,r=4,c=1] sin /= #100 Num
#scoreboard players operation @e[tag=T1Shell,r=4,c=1] cos /= #100 Num
#scoreboard players operation @e[tag=T1Shell,r=4,c=1] sinDec2 = @e[tag=T1Shell,r=4,c=1] sin
#scoreboard players operation @e[tag=T1Shell,r=4,c=1] cosDec2 = @e[tag=T1Shell,r=4,c=1] cos
#scoreboard players operation @e[tag=T1Shell,r=4,c=1] sinYDec2 = @e[tag=T1Shell,r=4,c=1] sinY
#scoreboard players operation @e[tag=T1Shell,r=4,c=1] sinDec2 %= #10 Num
#scoreboard players operation @e[tag=T1Shell,r=4,c=1] cosDec2 %= #10 Num
#scoreboard players operation @e[tag=T1Shell,r=4,c=1] sinYDec2 %= #10 Num
#execute @e[tag=T1Shell,r=4,c=1] ~ ~ ~ function tank:gun/fire
#execute @e[tag=T1Shell,r=10,c=1] ~ ~ ~ particle flame ~ ~ ~ 1 1 1 0.02 2000 force
#execute @e[tag=T1Shell,r=10,c=1] ~ ~ ~ playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0
#execute @e[tag=T1Shell,r=10,c=1] ~ ~ ~ playsound minecraft:entity.lightning.thunder master @a ~ ~ ~ 3 1
#tp @e[tag=T1Shell,r=10,c=1] ~ ~ ~ ~180 ~
#scoreboard players set @e[tag=T1Shell,r=10,c=1] HP 5
#scoreboard players set @e[tag=T1Shell,r=10,c=1] objChk 0
#scoreboard players set @p[tag=T1R] T1cooltime 80
#kill @e[tag=Fire,r=5,c=1]