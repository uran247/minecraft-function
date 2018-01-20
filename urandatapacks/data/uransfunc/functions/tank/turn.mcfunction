execute store result score @s T1rot run data get entity @s Rotation[0]
execute store result score @p T1rot run data get entity @p Rotation[0]
scoreboard players operation @p T1rot += #180 Num
execute if score @s T1rot < #0 Num run scoreboard players operation @s T1rot += #360 Num
execute if score @p T1rot < #0 Num run scoreboard players operation @p T1rot += #360 Num
execute if score @p T1rot > #360 Num run scoreboard players operation @p T1rot -= #360 Num
scoreboard players operation @p T1rot -= @s T1rot
execute if score @p T1rot < #0 Num run scoreboard players operation @p T1rot += #360 Num
execute if entity @p[scores={T1rot=2..358},distance=..2] run execute if score @p T1rot < #178 Num as @e[tag=Tr,distance=..3] at @s run tp @s ~ ~ ~ ~ ~2
execute if entity @p[scores={T1rot=2..358},distance=..2] run execute if score @p T1rot > #182 Num as @e[tag=Tr,distance=..3] at @s run tp @s ~ ~ ~ ~ ~-2