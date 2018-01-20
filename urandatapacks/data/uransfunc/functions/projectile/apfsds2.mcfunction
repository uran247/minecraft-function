#testforblock ~ ~ ~ air
#scoreboard players remove @s[score_objChk=0] HP 1
#kill @s[score_HP=0]
#execute @s[score_HP_min=4,score_HP=4,tag=!hit] ~ ~ ~ particle largeexplode ~ ~ ~ 2 2 2 0.0 200 force
#scoreboard players tag @s[score_HP_min=4,score_HP=4,tag=!hit] add hit
#setblock ~ ~ ~ air 0 destroy
#scoreboard players tag @e[type=Item,r=2,nbt={Item:{id:"minecraft:tnt"}}] add APFSDSexp
#execute @e[tag=APFSDSexp,r=2] ~ ~ ~ summon minecraft:tnt ~ ~ ~
#kill @e[tag=APFSDSexp,r=2]
#function projectile:apfsds/fly
#scoreboard players remove @s[score_loop_min=0] loop 1
#execute @s[score_loop_min=1,score_HP_min=1] ~ ~ ~ function projectile:apfsds2

execute at @s unless block ~ ~ ~ air run scoreboard players remove @s HP 1
kill @s[scores={HP=..0}]
execute if entity @s[scores={HP=4},tag=!hit] run particle largeexplode ~ ~ ~ 2 2 2 0 100 force
tag @s[scores={HP=4},tag=!hit] add hit
execute at @s run setblock ~ ~ ~ air destroy
execute at @s run kill @e[tag=!APFSDS,distance=..0.5]
tag @e[type=item,distance=..2,nbt={Item:{id:"minecraft:tnt"}}] add APFSDSexp
execute at @e[tag=APFSDSexp,distance=..2] run summon minecraft:tnt ~ ~ ~

scoreboard players operation @s PosX += @s speedX
scoreboard players operation @s PosY += @s speedY
scoreboard players operation @s PosZ -= @s speedZ

execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s PosX
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s PosY
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s PosZ

scoreboard players remove @s[scores={loop=0..}] loop 1
execute if entity @s[scores={loop=1..,HP=1..}] at @s run function uransfunc:projectile/apfsds2