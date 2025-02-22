scoreboard players add @a 29stunned 1


execute as @s[team=blue] at @n[type=marker,tag=29stun, tag=blue] run tp @s ~ ~ ~
execute as @s[team=red] at @n[type=marker,tag=29stun, tag=red] run tp @s ~ ~ ~
execute as @s[team=green] at @n[type=marker,tag=29stun, tag=green] run tp @s ~ ~ ~
execute as @s[team=orange] at @n[type=marker,tag=29stun, tag=orange] run tp @s ~ ~ ~

tp @s @s


tag @s[scores={29stunned=40..}] remove 29stunned
tag @s[scores={29stunned=40..}] add 29recover
scoreboard players set @s[scores={29stunned=40..}] 29recover 0

particle minecraft:electric_spark ~ ~1 ~ 0.5 1 0.5 0.1 3 force