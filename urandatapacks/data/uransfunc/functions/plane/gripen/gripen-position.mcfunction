#自身のIDを他パーツのIDから引く（自分と同じID判定）
execute as @e[tag=gripen] run scoreboard players operation @s reg1 = @s gripen
scoreboard players operation @e[tag=gripen,tag=!gripen-root] reg1 -= @s gripen

#自分と同じID（reg1=0）のパーツを自分の位置へ
execute as @s at @s run tp @e[tag=gripen,scores={reg1=0}] ~ ~ ~ ~ ~

#自分と同じID（reg1=0）のパーツの角度をスコア分にする
execute as @e[tag=gripen,distance=..1,scores={reg1=0}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @e[tag=gripen-root,limit=1,sort=nearest,distance=..10] AngX
execute as @e[tag=gripen,distance=..1,scores={reg1=0}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players get @e[tag=gripen-root,limit=1,sort=nearest,distance=..10] AngZ
execute as @e[tag=gripen,distance=..1,scores={reg1=0}] store result entity @s Pose.LeftArm[0] float -1 run scoreboard players get @e[tag=gripen-root,limit=1,sort=nearest,distance=..10] AngX
execute as @e[tag=gripen,distance=..1,scores={reg1=0}] store result entity @s Pose.LeftArm[2] float -1 run scoreboard players get @e[tag=gripen-root,limit=1,sort=nearest,distance=..10] AngZ
execute as @e[tag=gripen,distance=..1,scores={reg1=0}] store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=gripen-root,limit=1,sort=nearest,distance=..10] AngY

#一部パーツは180度回転
execute at @s as @e[tag=gripen-missile2,scores={reg1=0}] run tp @s ~ ~ ~ ~180 ~
