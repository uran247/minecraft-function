execute @s[tag=!smoke] ~ ~ ~ testforblock ~ ~ ~ air
scoreboard players tag @s[score_objChk=0,tag=!smoke] add explode
execute @s[tag=explode] ~ ~ ~ summon villager ~ ~ ~ {Tags:[T1Smoke,smoke],NoGravity:1b,Profession:0,Health:30.0f,NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:400000,ShowParticles:0b},{Id:20,Amplifier:1,Duration:400000,ShowParticles:0b}]}
kill @s[tag=explode]
execute @s[tag=!smoke] ~ ~ ~ function projectile:move/move
scoreboard players remove @s[score_loop_min=0] loop 1
execute @e[tag=smoke,score_loop_min=2] ~ ~3 ~ particle explode ~ ~ ~ 3 3 3 0.00001 150 force
execute @s[score_loop_min=1,tag=!explode] ~ ~ ~ function projectile:smokegranade2