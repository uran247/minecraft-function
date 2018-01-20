#sin計算
scoreboard players operation @s sin = @s AngY
scoreboard players operation @s[scores={AngY=..-1}] sin *= #-1 Num
scoreboard players operation @s reg1 = #180 Num
scoreboard players operation @s reg1 -= @s sin
scoreboard players operation @s sin *= @s reg1
scoreboard players operation @s reg1 = #40500 Num
scoreboard players operation @s reg1 -= @s sin
scoreboard players operation @s sin *= #400 Num
scoreboard players operation @s sin /= @s reg1
scoreboard players operation @s[scores={AngY=..-1}] sin *= #-1 Num