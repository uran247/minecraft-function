#execute as @a[nbt={RootVehicle:{Entity:{Tags:[gripen-root]}}}] at @s run function uransfunc:plane/gripen/gripen

#scoreboard players operation @s gripen 

effect give @s minecraft:invisibility 1
execute if entity @e[tag=!flying,tag=gripen-root,limit=1,sort=nearest,distance=..5] run function uransfunc:plane/gripen/gripen-rolling
execute if entity @e[tag=flying,tag=gripen-root,limit=1,sort=nearest,distance=..5] run function uransfunc:plane/gripen/gripen-flying
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] at @s run function uransfunc:plane/gripen/gripen-position
