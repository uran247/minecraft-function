#移動先x座標計算
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] reg1 = @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] speedX
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] reg1 *= @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] speed
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] PosX += @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] travelX
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s PosX

#移動先y座標計算
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] reg1 = @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] speedY
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] reg1 *= @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] speed
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] PosY += @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] travelY
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] store result entity @s Pos[1] double 0.0001 run scoreboard players get @s PosY

#移動先z座標計算
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] reg1 = @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] speedZ
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] reg1 *= @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] speed
scoreboard players operation @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] PosZ += @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] travelZ
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s PosZ

#選択スロット判定
scoreboard players set @s[scores={gripen-rotate=1..}] gripen-rotate 0
scoreboard players set @s[nbt={SelectedItemSlot:0}] gripen-rotate 1
scoreboard players set @s[nbt={SelectedItemSlot:2}] gripen-rotate 3
scoreboard players set @s[nbt={SelectedItemSlot:1}] gripen-rotate 2
scoreboard players set @s[nbt={SelectedItemSlot:7}] gripen-rotate 8
scoreboard players set @s[nbt={SelectedItemSlot:3}] gripen-rotate 4
scoreboard players set @s[nbt={SelectedItemSlot:5}] gripen-rotate 6
scoreboard players set @s[nbt={SelectedItemSlot:6}] gripen-rotate 7
scoreboard players set @s[nbt={SelectedItemSlot:8}] gripen-rotate 9

#execute as @s[scores={gripen-toggleG=1}] run function uransfunc:plane/gripen/gripen-gear

#gripen-rotateが1以上（操作スロット選択時）旋回・加減速
execute as @s[scores={gripen-rotate=1..}] run function uransfunc:plane/gripen/gripen-rotate

#1ブロック下が空気以外なら着陸モードへ
execute as @e[tag=gripen-root,limit=1,sort=nearest,distance=..5,scores={speed=..99}] at @s unless block ~ ~-1 ~ minecraft:air run function uransfunc:plane/gripen/gripen-landing

