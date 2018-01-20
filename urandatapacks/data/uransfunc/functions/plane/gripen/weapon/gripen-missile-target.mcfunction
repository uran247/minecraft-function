execute as @e[tag=aam-target] run data merge entity @s {Glowing:0}
tag @e[tag=aam-target] remove aam-target
tag @e[type=!player,type=!item,distance=10..1024] add aam-target-pre
execute positioned ^1034 ^ ^ as @e[tag=aam-target-pre] run tag @s[distance=..1024] remove aam-target-pre
execute positioned ^-1034 ^ ^ as @e[tag=aam-target-pre] run tag @s[distance=..1024] remove aam-target-pre
execute positioned ^ ^1034 ^ as @e[tag=aam-target-pre] run tag @s[distance=..1024] remove aam-target-pre
execute positioned ^ ^-1034 ^ as @e[tag=aam-target-pre] run tag @s[distance=..1024] remove aam-target-pre
execute positioned ^ ^ ^-1024 as @e[tag=aam-target-pre] run tag @s[distance=..1024] remove aam-target-pre
tag @e[tag=aam-target-pre,distance=..1024,limit=1,sort=nearest] add aam-target
execute as @e[tag=aam-target-pre,distance=..1024,limit=1,sort=nearest] run data merge entity @s {Glowing:1}
tag @e[tag=aam-target-pre] remove aam-target-pre
