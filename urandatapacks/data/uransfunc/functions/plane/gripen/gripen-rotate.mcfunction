#gripen-rotate（選択スロット）に応じてXYZ回転
execute if entity @s[scores={gripen-rotate=1}] run scoreboard players remove @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] AngY 2
execute if entity @s[scores={gripen-rotate=1}] as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] at @s run tp @s ~ ~ ~ ~-2 ~
execute if entity @s[scores={gripen-rotate=3}] run scoreboard players add @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] AngY 2
execute if entity @s[scores={gripen-rotate=3}] as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] at @s run tp @s ~ ~ ~ ~2 ~
execute if entity @s[scores={gripen-rotate=2}] run scoreboard players add @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] AngX 3
execute if entity @s[scores={gripen-rotate=8}] run scoreboard players remove @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] AngX 3
execute if entity @s[scores={gripen-rotate=4}] run scoreboard players add @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] AngZ 5
execute if entity @s[scores={gripen-rotate=6}] run scoreboard players remove @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] AngZ 5

#スコアを-180<x<180の範囲内に収める
scoreboard players remove @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={AngX=181..}] AngX 360
scoreboard players add @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={AngX=..-181}] AngX 360
scoreboard players remove @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={AngY=181..}] AngY 360
scoreboard players add @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={AngY=..-181}] AngY 360
scoreboard players remove @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={AngZ=181..}] AngZ 360
scoreboard players add @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={AngZ=..-181}] AngZ 360

#gripen-rotate（選択スロット）に応じて加減速（speed増減）
execute if entity @s[scores={gripen-rotate=7}] run scoreboard players remove @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={speed=100..}] speed 1
execute if entity @s[scores={gripen-rotate=9}] run scoreboard players add @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={speed=..120}] speed 1
execute if entity @s[scores={gripen-rotate=9}] run scoreboard players add @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={speed=..199},tag=no-gear] speed 1

#ベクトル計算
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] run function uransfunc:plane/gripen/gripen-move
