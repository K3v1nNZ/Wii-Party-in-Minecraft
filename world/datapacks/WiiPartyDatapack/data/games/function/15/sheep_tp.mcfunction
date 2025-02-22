scoreboard players operation temp= 15id = @s 15id
tag @s add 15temp
execute as @e[type=sheep,tag=15sheep,tag=!15leader] if score @s 15id = temp= 15id run tp @s @n[tag=15temp,type=sheep]
tag @s remove 15temp
