scoreboard players set @s loop 5
function uransfunc:projectile/apfsds2
scoreboard players add @s age 1
kill @s[scores={age=30..}]