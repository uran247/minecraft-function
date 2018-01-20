#sinY計算
scoreboard players operation @s sinY = @s AngX
scoreboard players operation @s[scores={AngX=..-1}] sinY *= #-1 Num
scoreboard players operation @s reg1 = #180 Num
scoreboard players operation @s reg1 -= @s sinY
scoreboard players operation @s sinY *= @s reg1
scoreboard players operation @s reg1 = #40500 Num
scoreboard players operation @s reg1 -= @s sinY
scoreboard players operation @s sinY *= #400 Num
scoreboard players operation @s sinY /= @s reg1
scoreboard players operation @s[scores={AngX=..-1}] sinY *= #-1 Num