#sin計算
scoreboard players operation @s sin = @s input1
execute if score @s input1 < #0 Num run scoreboard players operation @s sin *= #-1 Num
scoreboard players operation @s reg1 = #180 Num
scoreboard players operation @s reg1 -= @s sin
scoreboard players operation @s sin *= @s reg1
scoreboard players operation @s reg1 = #40500 Num
scoreboard players operation @s reg1 -= @s sin
scoreboard players operation @s sin *= #4000 Num
scoreboard players operation @s sin /= @s reg1
execute if score @s input1 < #0 Num run scoreboard players operation @s sin *= #-1 Num