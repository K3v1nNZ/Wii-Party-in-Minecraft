scoreboard players add count= 38scores 1
scoreboard players operation @s 38scores = count= 38scores
data modify entity @s Invulnerable set value 1b
tag @s add 38id
execute positioned 37970 13 37985 as @e[type=!minecraft:armor_stand,type=!minecraft:player,distance=..75,tag=!38id,limit=1] run function games:38/camera/id