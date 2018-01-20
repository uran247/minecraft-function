execute as @e[tag=gripen-body,limit=1,sort=nearest,distance=..5] store result score @s reg1 run data get entity @s HandItems[0].tag.Damage
execute as @e[tag=gripen-body,limit=1,sort=nearest,distance=..5,scores={reg1=14}] store result entity @s HandItems[0].tag.Damage byte 1 run scoreboard players get #16 Num
execute as @e[tag=gripen-body,limit=1,sort=nearest,distance=..5,scores={reg1=16}] store result entity @s HandItems[0].tag.Damage byte 1 run scoreboard players get #14 Num
execute if entity @e[tag=gripen-body,limit=1,sort=nearest,distance=..5,scores={reg1=14}] run tag @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] add no-gear
execute if entity @e[tag=gripen-body,limit=1,sort=nearest,distance=..5,scores={reg1=16}] run tag @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] remove no-gear
scoreboard players set @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={speed=121..},tag=!no-gear] speed 120
