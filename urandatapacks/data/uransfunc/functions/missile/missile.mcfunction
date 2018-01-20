scoreboard players set @s reg1 0
scoreboard players set @s reg2 0
execute at @s offset ^1000.5 ^ ^ if entity @e[tag=tag,limit=1,distance=..1000] run scoreboard players add @s reg1 1
execute at @s offset ^-1000.5 ^ ^ if entity @e[tag=tag,limit=1,distance=..1000] run scoreboard players remove @s reg1 1
execute at @s offset ^ ^1000 ^ if entity @e[tag=tag,limit=1,distance=..1000] run scoreboard players add @s reg2 1
execute at @s offset ^ ^-1000 ^ if entity @e[tag=tag,limit=1,distance=..1000] run scoreboard players remove @s reg2 1

tp @s[scores={reg1=1..}] ~ ~ ~ ~ ~-3
tp @s[scores={reg1=..-1}] ~ ~ ~ ~ ~3
tp @s[scores={reg2=1..}] ~ ~ ~ ~-3 ~
tp @s[scores={reg2=..-1}] ~ ~ ~ ~3 ~

execute as @e[tag=miss] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
tp @s ^ ^ ^0.5
#playsound minecraft:entity.lightning.thunder ambient @a ~ ~ ~ 16

execute if entity @e[tag=tag,distance=..5] run summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:15,Fuse:0,NoAI:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:20,ShowParticles:0b}]}
execute offset ~ ~1.5 ~ run particle minecraft:flame ^ ^ ^-3 0.001 0.001 0.001 0.01 10 force
execute offset ~ ~1.5 ~ run particle minecraft:cloud ^ ^ ^-3 0.001 0.001 0.001 0.01 20 force
execute if entity @e[tag=tag,distance=..5] run kill @s
