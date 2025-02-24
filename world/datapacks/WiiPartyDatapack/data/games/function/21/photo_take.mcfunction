

scoreboard players set valid= 21photo 0
# If middle pose and hasnt looked away
execute if entity @s[team=blue] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 2 if score @s 21poseTime matches 8.. run tag @s add 21bluevalid
execute if entity @s[team=red] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 2 if score @s 21poseTime matches 8.. run tag @s add 21redvalid
execute if entity @s[team=green] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 2 if score @s 21poseTime matches 8.. run tag @s add 21greenvalid
execute if entity @s[team=orange] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 2 if score @s 21poseTime matches 8.. run tag @s add 21orangevalid
# If turning away from middle
execute if entity @s[team=blue] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 1 if score @s 21poseTime matches ..4 run tag @s add 21bluevalid
execute if entity @s[team=red] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 1 if score @s 21poseTime matches ..4 run tag @s add 21redvalid
execute if entity @s[team=green] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 1 if score @s 21poseTime matches ..4 run tag @s add 21greenvalid
execute if entity @s[team=orange] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 1 if score @s 21poseTime matches ..4 run tag @s add 21orangevalid
execute if entity @s[team=blue] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 3 if score @s 21poseTime matches ..4 run tag @s add 21bluevalid
execute if entity @s[team=red] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 3 if score @s 21poseTime matches ..4 run tag @s add 21redvalid
execute if entity @s[team=green] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 3 if score @s 21poseTime matches ..4 run tag @s add 21greenvalid
execute if entity @s[team=orange] as @e[type=armor_stand,tag=21person] if score @s 21pose matches 3 if score @s 21poseTime matches ..4 run tag @s add 21orangevalid


execute if entity @s[team=blue] as @e[type=armor_stand,tag=21person,tag=21bluevalid] run scoreboard players add valid= 21photo 1
execute if entity @s[team=red] as @e[type=armor_stand,tag=21person,tag=21redvalid] run scoreboard players add valid= 21photo 1
execute if entity @s[team=green] as @e[type=armor_stand,tag=21person,tag=21greenvalid] run scoreboard players add valid= 21photo 1
execute if entity @s[team=orange] as @e[type=armor_stand,tag=21person,tag=21orangevalid] run scoreboard players add valid= 21photo 1


scoreboard players operation @s 21score = valid= 21photo

data modify storage games:21 Photos.Temp set value []
execute as @e[type=armor_stand,tag=21person] at @s run function games:21/photo_store

execute if entity @s[team=blue] run data modify storage games:21 Photos.Blue set from storage games:21 Photos.Temp
execute if entity @s[team=red] run data modify storage games:21 Photos.Red set from storage games:21 Photos.Temp
execute if entity @s[team=green] run data modify storage games:21 Photos.Green set from storage games:21 Photos.Temp
execute if entity @s[team=orange] run data modify storage games:21 Photos.Orange set from storage games:21 Photos.Temp

title @s times 1 0 3
title @s title {"text":"b","font":"minecraft:fade"}

scoreboard players set @s 21photoDelay 5

playsound minecraft:block.tripwire.click_on master @s ~ ~ ~ 1 0.75
# playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 2
playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2
playsound minecraft:ui.stonecutter.take_result master @s ~ ~ ~ 1 2