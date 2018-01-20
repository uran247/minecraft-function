#age加算
scoreboard players add @s age 1

#ミサイル移動(誘導)
scoreboard players set @s yaw 0
scoreboard players set @s pitch 0
execute positioned as @e[tag=aam-target,limit=1,sort=nearest] positioned ^1001 ^ ^ run scoreboard players set @s[distance=..1000,scores={age=5..}] pitch -1
execute positioned as @e[tag=aam-target,limit=1,sort=nearest] positioned ^-1001 ^ ^ run scoreboard players set @s[distance=..1000,scores={age=5..}] pitch 1
execute positioned as @e[tag=aam-target,limit=1,sort=nearest] positioned ^ ^1001 ^ run scoreboard players set @s[distance=..1000,scores={age=5..}] yaw 1
execute positioned as @e[tag=aam-target,limit=1,sort=nearest] positioned ^ ^-1001 ^ run scoreboard players set @s[distance=..1000,scores={age=5..}] yaw -1
execute positioned as @e[tag=aam-target,limit=1,sort=nearest] positioned ^ ^ ^1001 run scoreboard players set @s[distance=..1000,scores={age=5..}] pitch -1
#execute as @s[scores={yaw=1},x_rotation=-90..59] run say yaw1
#execute as @s[scores={yaw=-1},x_rotation=-59..90] run say yaw-1
#execute as @s[scores={pitch=1}] run say pitch1
#execute as @s[scores={pitch=-1}] run say pitch-1
#say @e[tag=aam-target,limit=1,sort=nearest]

tp @s[scores={yaw=1},x_rotation=-90..59] ~ ~ ~ ~ ~7.5
tp @s[scores={yaw=-1},x_rotation=-59..90] ~ ~ ~ ~ ~-7.5
tp @s[scores={pitch=1}] ~ ~ ~ ~-7.5 ~
tp @s[scores={pitch=-1}] ~ ~ ~ ~7.5 ~

#ミサイル移動
tp @s[scores={age=1}] ^ ^ ^3 ~1 ~
tp @s[scores={age=2}] ^ ^ ^3 ~-1 ~
tp @s[scores={age=3..}] ^ ^ ^3
data merge entity @s {Pose:{Head:[1.0f,0.0f,0.0f]}}
execute store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

#ミサイル起爆
execute at @e[tag=aam-target,limit=1,sort=nearest] run execute as @s[distance=..5] positioned ~ ~1 ~ run function uransfunc:plane/gripen/aam-explosion
tag @e[tag=aam-target,limit=1,sort=nearest,distance=..5] remove aam-target
execute at @e[tag=aam-target,limit=1,sort=nearest] run kill @s[distance=..5]

#パーティクル
execute positioned ~ ~1 ~ run particle minecraft:cloud ^ ^ ^-2 0 0 0 0.05 10 force

#音
playsound minecraft:entity.lightning.thunder ambient @a ~ ~ ~ 2 1.8

