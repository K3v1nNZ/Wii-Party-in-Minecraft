execute if score cur= 21photo matches 0 store result entity @s Pose.Head[0] float 1 run data get storage games:21 Photos.Temp[0][0]
execute if score cur= 21photo matches 1 store result entity @s Pose.Head[0] float 1 run data get storage games:21 Photos.Temp[1][0]
execute if score cur= 21photo matches 2 store result entity @s Pose.Head[0] float 1 run data get storage games:21 Photos.Temp[2][0]
execute if score cur= 21photo matches 3 store result entity @s Pose.Head[0] float 1 run data get storage games:21 Photos.Temp[3][0]
execute if score cur= 21photo matches 4 store result entity @s Pose.Head[0] float 1 run data get storage games:21 Photos.Temp[4][0]
execute if score cur= 21photo matches 5 store result entity @s Pose.Head[0] float 1 run data get storage games:21 Photos.Temp[5][0]
execute if score cur= 21photo matches 6 store result entity @s Pose.Head[0] float 1 run data get storage games:21 Photos.Temp[6][0]
execute if score cur= 21photo matches 7 store result entity @s Pose.Head[0] float 1 run data get storage games:21 Photos.Temp[7][0]

execute if score cur= 21photo matches 0 store result entity @s Pose.Head[1] float 1 run data get storage games:21 Photos.Temp[0][1]
execute if score cur= 21photo matches 1 store result entity @s Pose.Head[1] float 1 run data get storage games:21 Photos.Temp[1][1]
execute if score cur= 21photo matches 2 store result entity @s Pose.Head[1] float 1 run data get storage games:21 Photos.Temp[2][1]
execute if score cur= 21photo matches 3 store result entity @s Pose.Head[1] float 1 run data get storage games:21 Photos.Temp[3][1]
execute if score cur= 21photo matches 4 store result entity @s Pose.Head[1] float 1 run data get storage games:21 Photos.Temp[4][1]
execute if score cur= 21photo matches 5 store result entity @s Pose.Head[1] float 1 run data get storage games:21 Photos.Temp[5][1]
execute if score cur= 21photo matches 6 store result entity @s Pose.Head[1] float 1 run data get storage games:21 Photos.Temp[6][1]
execute if score cur= 21photo matches 7 store result entity @s Pose.Head[1] float 1 run data get storage games:21 Photos.Temp[7][1]

execute if score cur= 21photo matches 0 store result entity @s Pose.Head[2] float 1 run data get storage games:21 Photos.Temp[0][3]
execute if score cur= 21photo matches 1 store result entity @s Pose.Head[2] float 1 run data get storage games:21 Photos.Temp[1][3]
execute if score cur= 21photo matches 2 store result entity @s Pose.Head[2] float 1 run data get storage games:21 Photos.Temp[2][3]
execute if score cur= 21photo matches 3 store result entity @s Pose.Head[2] float 1 run data get storage games:21 Photos.Temp[3][3]
execute if score cur= 21photo matches 4 store result entity @s Pose.Head[2] float 1 run data get storage games:21 Photos.Temp[4][3]
execute if score cur= 21photo matches 5 store result entity @s Pose.Head[2] float 1 run data get storage games:21 Photos.Temp[5][3]
execute if score cur= 21photo matches 6 store result entity @s Pose.Head[2] float 1 run data get storage games:21 Photos.Temp[6][3]
execute if score cur= 21photo matches 7 store result entity @s Pose.Head[2] float 1 run data get storage games:21 Photos.Temp[7][3]

execute if entity @p[tag=21temp,team=blue] if entity @s[tag=21bluevalid] run team join blue
execute if entity @p[tag=21temp,team=blue] if entity @s[tag=21bluevalid] run effect give @s glowing infinite 1
execute if entity @p[tag=21temp,team=red] if entity @s[tag=21redvalid] run team join red
execute if entity @p[tag=21temp,team=red] if entity @s[tag=21redvalid] run effect give @s glowing infinite 1
execute if entity @p[tag=21temp,team=green] if entity @s[tag=21greenvalid] run team join green
execute if entity @p[tag=21temp,team=green] if entity @s[tag=21greenvalid] run effect give @s glowing infinite 1
execute if entity @p[tag=21temp,team=orange] if entity @s[tag=21orangevalid] run team join orange
execute if entity @p[tag=21temp,team=orange] if entity @s[tag=21orangevalid] run effect give @s glowing infinite 1

scoreboard players add cur= 21photo 1

say a