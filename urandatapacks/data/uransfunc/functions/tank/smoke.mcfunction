summon armor_stand ~ ~ ~ {CustomName:T1Smoke1,Tags:[T1Smoke,T1],Invisible:1,NoGravity:1,ArmorItems:[{},{},{},{id:obsidian,Count:1b}],UUIDMost:0l,UUIDLeast:281474976710658l,CommandStats:{SuccessCountName:"@s",SuccessCountObjective:"objChk"}}
summon armor_stand ~ ~ ~ {CustomName:T1Smoke2,Tags:[T1Smoke,T1],Invisible:1,NoGravity:1,ArmorItems:[{},{},{},{id:obsidian,Count:1b}],UUIDMost:0l,UUIDLeast:281474976710659l,CommandStats:{SuccessCountName:"@s",SuccessCountObjective:"objChk"}}
summon armor_stand ~ ~ ~ {CustomName:T1Smoke3,Tags:[T1Smoke,T1],Invisible:1,NoGravity:1,ArmorItems:[{},{},{},{id:obsidian,Count:1b}],UUIDMost:0l,UUIDLeast:281474976710660l,CommandStats:{SuccessCountName:"@s",SuccessCountObjective:"objChk"}}
teleport @e[tag=T1Smoke,name=T1Smoke1,r=4,c=1] ~ ~2.65 ~ ~140 ~
teleport @e[tag=T1Smoke,name=T1Smoke2,r=4,c=1] ~ ~2.65 ~ ~180 ~
teleport @e[tag=T1Smoke,name=T1Smoke3,r=4,c=1] ~ ~2.65 ~ ~220 ~
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ function tank:angle/angle
execute @e[tag=T1Smoke,c=3] ~ ~ ~ function math:sin
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ function math:cos
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ scoreboard players set @s sinY -1
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ scoreboard players operation @s sin *= #87 Num
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ scoreboard players operation @s cos *= #87 Num
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ scoreboard players operation @s sin /= #100 Num
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ scoreboard players operation @s cos /= #100 Num
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ scoreboard players operation @s sinDec2 = @s sin
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ scoreboard players operation @s cosDec2 = @s cos
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ scoreboard players operation @s sinDec2 %= #10 Num
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ scoreboard players operation @s cosDec2 %= #10 Num
execute @e[tag=T1Smoke,r=4,c=3] ~ ~ ~ scoreboard players set @s sinYDec2 0
execute @e[tag=T1Smoke,r=10,c=3] ~ ~ ~ playsound minecraft:entity.firework.large_blast ambient @a ~ ~ ~ 3 0.8
scoreboard players set @e[tag=T1Smoke,r=4,c=3] objChk 0
kill @e[tag=Smok]