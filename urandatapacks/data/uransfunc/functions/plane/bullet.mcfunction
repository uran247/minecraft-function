tp @s[scores={age=..80}] ^ ^ ^5
scoreboard players add @s age 1
execute offset ~ ~2 ~ unless block ^ ^ ^1 minecraft:air run particle minecraft:poof ^ ^ ^1 0 0 0 0.3 5 force
execute offset ~ ~2 ~ unless block ^ ^ ^2 minecraft:air run particle minecraft:poof ^ ^ ^2 0 0 0 0.3 5 force
execute offset ~ ~2 ~ unless block ^ ^ ^3 minecraft:air run particle minecraft:poof ^ ^ ^3 0 0 0 0.3 5 force
execute offset ~ ~2 ~ unless block ^ ^ ^4 minecraft:air run particle minecraft:poof ^ ^ ^4 0 0 0 0.3 5 force
execute offset ~ ~2 ~ unless block ^ ^ ^5 minecraft:air run particle minecraft:poof ^ ^ ^5 0 0 0 0.3 5 force
execute as @s[scores={age=1..}] offset ^ ^ ^1 run effect give @e[distance=..1.5] minecraft:instant_damage 1 1
execute as @s[scores={age=1..}] offset ^ ^ ^2 run effect give @e[distance=..1.5] minecraft:instant_damage 1 1
execute as @s[scores={age=1..}] offset ^ ^ ^3 run effect give @e[distance=..1.5] minecraft:instant_damage 1 1 
execute as @s[scores={age=1..}] offset ^ ^ ^4 run effect give @e[distance=..1.5] minecraft:instant_damage 1 1
execute as @s[scores={age=1..}] offset ^ ^ ^5 run effect give @e[distance=..1.5] minecraft:instant_damage 1 1
execute unless block ~ ~2 ~ minecraft:air run kill @s
kill @s[scores={age=80..}]