#scoreboard players tag @s add T1R {RootVehicle:{Entity:{Tags:[T1C,T1CRoot]}}}
#effect @s[tag=T1R] minecraft:invisibility 1 1 true
#scoreboard players set @s[tag=T1R] T1move 0
#scoreboard players set @s[tag=T1R] T1move 1 {Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{display:{Name:"Forward"}}}]}
#scoreboard players set @s[tag=T1R] T1move 2 {Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{display:{Name:"Back"}}}]}
#scoreboard players set @s[tag=T1R] T1move 0 {SelectedItemSlot:5}
#execute @s[tag=T1R,score_T1move_min=1] ~ ~ ~ function tank:check1
#execute @s[tag=T1R,score_T1move_min=1] ~ ~ ~ function tank:move
#scoreboard players set @s[tag=T1R] T1turret 0
#scoreboard players set @s[tag=T1R] T1turret 1 {SelectedItemSlot:2}
#scoreboard players set @s[tag=T1R] T1turret 2 {SelectedItemSlot:0}
#scoreboard players set @s[tag=T1R] T1turret 4 {SelectedItemSlot:7}
#scoreboard players set @s[tag=T1R] T1turret 3 {SelectedItemSlot:8}
#execute @s[tag=T1R,score_T1turret_min=1] ~ ~ ~ function tank:turret
#execute @s[tag=T1R] ~ ~ ~ scoreboard players tag @e[type=Item,r=2] add Fire {Item:{id:"minecraft:spectral_arrow",tag:{display:{Name:"APFSDS"}}}}
#execute @s[tag=T1R] ~ ~ ~ scoreboard players tag @e[type=Item,r=2] add Smoke {Item:{id:"minecraft:obsidian",tag:{display:{Name:"Smoke"}}}}
#execute @s[tag=T1R] ~ ~ ~ execute @e[tag=Fire,r=2] ~ ~ ~ execute @e[tag=TrRoot,r=5] ~ ~ ~ function tank:gun
#execute @s[tag=T1R] ~ ~ ~ execute @e[tag=Smoke,r=2] ~ ~ ~ execute @e[tag=TrRoot,r=5] ~ ~ ~ function tank:smoke
#execute @s[tag=T1R,score_T1cooltime_min=0] ~ ~ ~ function tank:cooltime
#execute @s[tag=T1R] ~ ~ ~ entitydata @e[type=Item,r=2] {PickupDelay:0}
#scoreboard players tag @s[tag=T1R] remove T1R

effect give @s minecraft:invisibility 1
scoreboard players set @s[nbt={SelectedItemSlot:4}] T1move 0
scoreboard players set @s[nbt={SelectedItemSlot:7}] T1move -1
scoreboard players set @s[nbt={SelectedItemSlot:1}] T1move 2
execute as @s[nbt={SelectedItemSlot:3}] at @s run execute as @e[tag=hull,distance=..2] at @s run tp @s ~ ~ ~ ~ ~-2
execute as @s[nbt={SelectedItemSlot:5}] at @s run execute as @e[tag=hull,distance=..2] at @s run tp @s ~ ~ ~ ~ ~2
execute as @s if score @s T1move = #0 Num at @s run data merge entity @e[tag=T1Root,limit=1,distance=..2] {NoAI:1}
execute as @s unless score @s T1move = #0 Num at @s run execute as @e[tag=T1Root,limit=1,distance=..2] run function uransfunc:tank/move
execute as @s[scores={auto-aim=0}] at @s run execute as @e[tag=TrRoot,limit=1,distance=..2] run function uransfunc:tank/turn
execute as @s[scores={auto-aim=1}] at @s if entity @e[tag=T1tg] run execute as @e[tag=TrRoot,limit=1,distance=..2] run function uransfunc:tank/auto-target
execute if entity @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",tag:{display:{Name:"APFSDS"}}}},distance=..3] as @e[tag=B,limit=1,distance=..3] at @s run function uransfunc:tank/gun
execute if entity @s[scores={T1cooltime=0..}] run function uransfunc:tank/cooltime
