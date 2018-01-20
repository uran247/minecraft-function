function uransfunc:util/get-players-angx
function uransfunc:util/get-players-angy
function uransfunc:math/cos
function uransfunc:math/cos-y
function uransfunc:math/sin
function uransfunc:math/sin-y

scoreboard players operation @s speedX = @s sin
scoreboard players operation @s speedX *= @s cosY
scoreboard players operation @s speedY = @s sinY
scoreboard players operation @s speedZ = @s cos
scoreboard players operation @s speedZ *= @s cosY

scoreboard players operation @s speedX *= @s speed
scoreboard players operation @s speedY *= @s speed
scoreboard players operation @s speedZ *= @s speed

execute store result entity @s Motion[0] double -0.00001 run scoreboard players get @s speedX
execute store result entity @s Motion[1] double -0.001 run scoreboard players get @s speedY
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get @s speedZ

