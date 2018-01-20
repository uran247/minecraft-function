#スロット8選択でspeed増，6選択で減
execute if entity @s[nbt={SelectedItemSlot:8}] run scoreboard players add @e[tag=gripen-root,limit=1,sort=nearest,distance=..10,tag=!flying,scores={speed=0..199}] speed 1
execute if entity @s[nbt={SelectedItemSlot:6}] run scoreboard players remove @e[tag=gripen-root,limit=1,sort=nearest,distance=..10,tag=!flying,scores={speed=1..200}] speed 1

#スロット0選択で左旋回，2で右旋回
execute if entity @s[nbt={SelectedItemSlot:0}] run scoreboard players remove @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] AngY 1
execute if entity @s[nbt={SelectedItemSlot:0}] as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] at @s run tp @s ~ ~ ~ ~-1 ~
execute if entity @s[nbt={SelectedItemSlot:2}] run scoreboard players add @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] AngY 1
execute if entity @s[nbt={SelectedItemSlot:2}] as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] at @s run tp @s ~ ~ ~ ~1 ~

#ヨー，ロールを0に
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying] if entity @s[scores={AngX=-90..90}] run scoreboard players set @s AngX 0
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying] if entity @s[scores={AngX=-90..90}] run scoreboard players set @s AngZ 0
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying] unless entity @s[scores={AngX=-90..90}] run scoreboard players set @s AngX 180
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying] unless entity @s[scores={AngX=-90..90}] run scoreboard players set @s AngZ 180

#ベクトル計算
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] run function uransfunc:plane/gripen/gripen-move

#x方向ベクトル×speedをMotionに代入
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying,scores={speed=1..99}] reg1 = @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying,scores={speed=1..99}] speedX
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying,scores={speed=1..99}] reg1 *= @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying,scores={speed=1..99}] speed
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying,scores={speed=1..99}] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s reg1

#z方向ベクトル×speedをMotionに代入
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying,scores={speed=1..99}] reg1 = @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying,scores={speed=1..99}] speedZ
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying,scores={speed=1..99}] reg1 *= @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying,scores={speed=1..99}] speed
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,tag=!flying,scores={speed=1..99}] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s reg1

#speedが100を超えたら飛行状態に遷移
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={speed=100..}] run function uransfunc:plane/gripen/gripen-takeoff

