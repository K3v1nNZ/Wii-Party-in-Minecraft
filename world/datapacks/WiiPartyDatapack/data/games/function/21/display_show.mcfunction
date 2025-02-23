tag @s add 21temp

scoreboard players set new= 21photo 0

scoreboard players set cur= 21photo 0

execute if entity @s[team=blue] run data modify storage games:21 Photos.Temp set from storage games:21 Photos.Blue
execute if entity @s[team=red] run data modify storage games:21 Photos.Temp set from storage games:21 Photos.Red
execute if entity @s[team=green] run data modify storage games:21 Photos.Temp set from storage games:21 Photos.Green
execute if entity @s[team=orange] run data modify storage games:21 Photos.Temp set from storage games:21 Photos.Orange

execute as @e[type=armor_stand,tag=21person] run function games:21/display_set

tag @s add 21photo
schedule function games:21/display_new 3s

tag @s remove 21temp

execute if entity @s[team=blue] run tellraw @s "blue"
execute if entity @s[team=red] run tellraw @s "red"
execute if entity @s[team=green] run tellraw @s "green"
execute if entity @s[team=orange] run tellraw @s "orange"