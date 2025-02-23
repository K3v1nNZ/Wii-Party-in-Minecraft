

scoreboard players set valid= 21photo 0
execute if entity @s[team=blue] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 2 run tag @s add 21bluevalid
execute if entity @s[team=red] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 2 run tag @s add 21redvalid
execute if entity @s[team=green] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 2 run tag @s add 21greenvalid
execute if entity @s[team=orange] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 2 run tag @s add 21orangevalid
execute as @e[type=armor_stand,tag=21person] if score @s 21pose matches 2 run scoreboard players add valid= 21photo 1


scoreboard players operation @s 21score = valid= 21photo

data modify storage games:21 Photos.Temp set value []
execute as @e[type=armor_stand,tag=21person] at @s run function games:21/photo_store

execute if entity @s[team=blue] run data modify storage games:21 Photos.Blue set from storage games:21 Photos.Temp
execute if entity @s[team=red] run data modify storage games:21 Photos.Red set from storage games:21 Photos.Temp
execute if entity @s[team=green] run data modify storage games:21 Photos.Green set from storage games:21 Photos.Temp
execute if entity @s[team=orange] run data modify storage games:21 Photos.Orange set from storage games:21 Photos.Temp