scoreboard players operation @s reg1 = @s speedX
scoreboard players operation @s reg1 *= #4 Num
scoreboard players operation @s PosX += @s reg1
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s PosX

scoreboard players operation @s reg1 = @s speedY
scoreboard players operation @s reg1 *= #4 Num
scoreboard players operation @s PosY += @s reg1
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s PosY

scoreboard players operation @s reg1 = @s speedZ
scoreboard players operation @s reg1 *= #4 Num
scoreboard players operation @s PosZ -= @s reg1
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s PosZ

execute at @s run particle flame ~ ~ ~ 0.3 0.3 0.3 00 300 force

scoreboard players operation @s PosX += @s speedX
scoreboard players operation @s PosY += @s speedY
scoreboard players operation @s PosZ -= @s speedZ

execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s PosX
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s PosY
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s PosZ

execute at @s run particle flame ~ ~ ~ 0.5 0.5 0.5 00 300 force
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0
execute at @s run playsound minecraft:entity.lightning.thunder master @a ~ ~ ~ 3 1

