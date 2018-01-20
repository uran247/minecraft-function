summon minecraft:armor_stand ^ ^-3 ^5 {CustomName:bullet,NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:snowball",Count:1b}],Glowing:0,Tags:[init]}
tp @e[name=bullet,distance=..10,tag=init] ^ ^-3 ^5 ~ ~
tag @e[name=bullet,distance=..10,tag=init] remove init
playsound minecraft:entity.firework.large_blast ambient @s ~ ~ ~ 16 1.8
scoreboard players set @s[scores={lod=2..}] lod 0
