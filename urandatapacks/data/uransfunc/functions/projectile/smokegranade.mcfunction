scoreboard players set @s loop 5
function projectile:smokegranade2
execute @s[tag=!smoke] ~ ~ ~ scoreboard players add @s[score_sinY=95] sinY 5
execute @s[tag=!smoke] ~ ~ ~ scoreboard players operation @s sinYDec2 = @s sinY
execute @s[tag=!smoke] ~ ~ ~ scoreboard players operation @s sinYDec2 %= #10 Num