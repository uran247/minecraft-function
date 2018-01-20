summon minecraft:armor_stand ~ ~1 ~ {NoGravity:0,Tags:[gripen-root,gripen,gripen-init],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:200000,ShowParticles:0b}],Tags:[gripen,gripen-init]}]}
summon armor_stand ~ ~1 ~ {Tags:["gripen-nose","gripen",gripen-init],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:15}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
summon armor_stand ~ ~1 ~ {Tags:["gripen-body","gripen",gripen-init],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:14}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
summon armor_stand ~ ~1 ~ {Tags:["gripen-missile1","gripen",gripen-missile,gripen-init],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:18}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
summon armor_stand ~ ~1 ~ {Tags:["gripen-missile2","gripen",gripen-init],NoGravity:1b,Invisible:1,HandItems:[{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:18}}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Rotation:[180f,0f]}
#summon armor_stand ~ ~1 ~ {Tags:["gripen-missile3","gripen",gripen-missile,gripen-init],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:18}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
#summon armor_stand ~ ~1 ~ {Tags:["gripen-missile4","gripen",gripen-missile,gripen-init],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:18}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
scoreboard players set @e[tag=gripen-init,tag=gripen-root] gripen 0
scoreboard players operation @e[tag=gripen-init,tag=gripen-root,limit=1] gripen > @e[tag=gripen-root] gripen
scoreboard players operation @e[tag=gripen-init] gripen = @e[tag=gripen-init,tag=gripen-root,limit=1] gripen
scoreboard players add @e[tag=gripen-init] gripen 1
scoreboard players set @e[tag=gripen-init,tag=gripen-root] speed 0
scoreboard players set @e[tag=gripen-init,tag=gripen-root] rolling 0
execute store result score @e[tag=gripen-init,tag=gripen-root,limit=1] PosX run data get entity @e[tag=gripen-init,tag=gripen-root,limit=1] Pos[0] 10000
execute store result score @e[tag=gripen-init,tag=gripen-root,limit=1] PosY run data get entity @e[tag=gripen-init,tag=gripen-root,limit=1] Pos[1] 10000
execute store result score @e[tag=gripen-init,tag=gripen-root,limit=1] PosZ run data get entity @e[tag=gripen-init,tag=gripen-root,limit=1] Pos[2] 10000
execute as @e[tag=gripen-root] run function uransfunc:plane/gripen/gripen-move
tag @e[tag=gripen-init] remove gripen-init
