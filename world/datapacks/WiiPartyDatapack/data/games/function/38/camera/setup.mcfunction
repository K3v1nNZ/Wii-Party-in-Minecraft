scoreboard players set count= 38scores 0
scoreboard players reset @e 38scores
execute as @e[tag=38id] run data modify entity @s NoAI set value 0b
tag @e remove 38id
execute positioned 37970 13 37985 as @e[type=!minecraft:armor_stand,type=!minecraft:player,distance=..75,tag=!38id,limit=1] run function games:38/camera/id
scoreboard players reset count= 38scores

data modify storage minecraft:game38 blue set value []
data modify storage minecraft:game38 red set value []
data modify storage minecraft:game38 green set value []
data modify storage minecraft:game38 orange set value []