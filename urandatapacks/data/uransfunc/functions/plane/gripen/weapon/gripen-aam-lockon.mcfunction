#捨てられた本にタグ付け
execute at @s as @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{title:"plane-controller"}}},distance=..1000] run tag @s add launch

#本が捨てられてない場合ターゲットを探索
execute unless entity @e[type=item,tag=launch,distance=..10] run function uransfunc:plane/gripen/weapon/gripen-missile-target

#本が捨てられ，ターゲットが存在する場合ミサイル発射してglowingを解除
execute if entity @e[tag=aam-target] if entity @e[type=item,tag=launch,distance=..10] as @e[tag=gripen-root,limit=1,sort=nearest,distance=..10] run function uransfunc:plane/gripen/weapon/gripen-missile-launch
execute if entity @e[type=item,tag=launch,distance=..10] run data merge entity @e[tag=aam-target,limit=1,sort=nearest] {Glowing:0b}

#本が捨てられた場合ロックオンタグを外し，本を再度付与，捨てた本は消去
execute if entity @e[type=item,tag=launch,distance=..10] run tag @s remove gripen-lockon
execute if entity @e[type=item,tag=launch,distance=..10] run give @p minecraft:written_book{display:{Name:"plane-controller"},title:"plane-controller",author:"",generation:0,pages:["{\"text\":\"Controll Aircraft\\n\",\"color\":\"red\",\"bold\":true,\"underlined\":false,\"extra\":[{\"text\":\"toggle gear\\n\",\"color\":\"black\",\"bold\":false,\"underlined\":true,\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"toggle gear\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/execute as @s[nbt={RootVehicle:{Entity:{Tags:[gripen-root]}}}] if entity @e[tag=flying,tag=gripen-root,limit=1,sort=nearest,distance=..5] run function uransfunc:plane/gripen/gripen-gear\"}},{\"text\":\"error correction\",\"color\":\"black\",\"bold\":false,\"underlined\":true,\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"correct pose error\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/execute if entity @s[nbt={RootVehicle:{Entity:{Tags:[gripen-root]}}}] as @e[tag=gripen,distance=..10] run data merge entity @s {Pose:{RightArm:[0.0f,0.0f,0.0f]}}\"}}]}","{\"text\":\"Weapon\\n\",\"color\":\"red\",\"bold\":true,\"underlined\":false,\"extra\":[{\"text\":\"AAM lock on\",\"color\":\"black\",\"bold\":false,\"underlined\":true,\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"look an enemy and then throw this book\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/execute as @s[nbt={RootVehicle:{Entity:{Tags:[gripen-root]}}}] run function uransfunc:plane/gripen/weapon/gripen-toggle-lockon\"}}]}"]}
kill @e[type=item,tag=launch,distance=..10]

