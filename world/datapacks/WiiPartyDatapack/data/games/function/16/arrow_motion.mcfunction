
#execute as @s[tag=16arrow] store result entity @s Motion[0] double 2 run data get entity @s Motion[0]
execute as @s[tag=16arrow] store result entity @s Motion[2] double 10 run data get entity @s Motion[2]

tag @s[tag=16arrow] add 16arrow2
tag @s add 16arrow
