execute @s[score_T1turret_min=1,score_T1turret=1] ~ ~-1 ~ tp @e[tag=Tr,r=3] ~ ~ ~ ~2 ~
execute @s[score_T1turret_min=2,score_T1turret=2] ~ ~-1 ~ tp @e[tag=Tr,r=3] ~ ~ ~ ~-2 ~
execute @s[score_T1turret_min=3,score_T1turret=3] ~ ~-1 ~ tp @e[tag=Tr,r=5,rxm=-19,rx=12] ~ ~ ~ ~ ~-1
execute @s[score_T1turret_min=3,score_T1turret=3] ~ ~ ~ execute @e[tag=T1B,r=5] ~ ~ ~ function tank:turret/depression
execute @s[score_T1turret_min=4,score_T1turret=4] ~ ~-1 ~ tp @e[tag=Tr,r=5,rxm=-20,rx=11] ~ ~ ~ ~ ~1
execute @s[score_T1turret_min=4,score_T1turret=4] ~ ~ ~ execute @e[tag=T1B,r=5] ~ ~ ~ function tank:turret/depression
#say @e[tag=T1B,r=4,c=1,rxm=-19,rx=11]