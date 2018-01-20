#sin計算
execute store result entity @e[tag=Trigonometric1,x=0,y=0,z=0,limit=1] Rotation[0] float 1 run scoreboard players get @s input
execute at @e[tag=Trigonometric1,x=0,y=0,z=0] align xz run tp @e[tag=Trigonometric2,distance=..10,limit=1,sort=nearest] ^ ^ ^5
execute store result score @s sin run data get entity @e[tag=Trigonometric2,x=-10,y=0,z=-10,dx=20,dz=20,limit=1,sort=nearest] Pos[0] 200000