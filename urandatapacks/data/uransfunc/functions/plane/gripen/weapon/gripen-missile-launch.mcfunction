#ミサイル召喚
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:18}}],Tags:["gripen-missile","missile","init","gripen-aam"],NoGravity:1,Invisible:1,Pose:{Head:[1.0f,0f,0f]}}
data merge entity @e[tag=init,distance=..1,limit=1] {Pose:{Head:[1.0f,0.0f,0.0f]}}

#方向特定用エンティティ召喚
execute unless entity @e[tag=gripen-direction1,x=0,y=0,z=0] run summon minecraft:armor_stand 0 0 0 {Tags:["gripen-direction","gripen-direction1"],NoGravity:1}
execute unless entity @e[tag=gripen-direction2,x=0,y=0,z=0,distance=..20] run summon minecraft:armor_stand 0 0 0 {Tags:["gripen-direction","gripen-direction2"],NoGravity:1}

#エンティティ片方を進行方向にずらす
execute store result entity @e[tag=gripen-direction2,x=0,y=0,z=0,distance=..20,limit=1] Pos[0] double 0.1 run scoreboard players get @s speedX 
execute store result entity @e[tag=gripen-direction2,x=0,y=0,z=0,distance=..20,limit=1] Pos[1] double 0.1 run scoreboard players get @s speedY 
execute store result entity @e[tag=gripen-direction2,x=0,y=0,z=0,distance=..20,limit=1] Pos[2] double 0.1 run scoreboard players get @s speedZ

#もう片方をずらした方向に向ける
execute as @e[tag=gripen-direction1,x=0,y=0,z=0,distance=..10] at @s run tp @s ~ ~ ~ facing entity @e[tag=gripen-direction2,distance=..20,limit=1]

#ミサイルを向けた方向と同じ方向に
execute at @s as @e[tag=gripen-direction1,x=0,y=0,z=0,distance=..10] run tp @e[tag=init,distance=..10] ~ ~ ~ ~ ~
execute as @e[tag=init,distance=..10] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

tag @e[tag=gripen-missile,distance=..1] remove init

