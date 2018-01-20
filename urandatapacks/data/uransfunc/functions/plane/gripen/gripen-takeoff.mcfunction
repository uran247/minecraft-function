tag @s add flying
data merge entity @s {NoGravity:1}
execute store result score @s PosX run data get entity @s Pos[0] 10000
execute store result score @s PosY run data get entity @s Pos[1] 10000
execute store result score @s PosZ run data get entity @s Pos[2] 10000
