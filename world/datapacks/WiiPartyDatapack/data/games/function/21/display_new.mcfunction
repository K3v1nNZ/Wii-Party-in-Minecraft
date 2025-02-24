tag @e remove 21cur

effect clear @e[type=armor_stand,tag=21person] glowing

scoreboard players set new= 21photo 1
execute as @a[team=blue,tag=ingame,tag=!21photo] at @s if data storage games:21 Photos.Blue if score new= 21photo matches 1 run function games:21/display_new_player
execute as @a[team=red,tag=ingame,tag=!21photo] at @s if data storage games:21 Photos.Red if score new= 21photo matches 1 run function games:21/display_new_player
execute as @a[team=green,tag=ingame,tag=!21photo] at @s if data storage games:21 Photos.Green if score new= 21photo matches 1 run function games:21/display_new_player
execute as @a[team=orange,tag=ingame,tag=!21photo] at @s if data storage games:21 Photos.Orange if score new= 21photo matches 1 run function games:21/display_new_player

execute if score new= 21photo matches 1 run function games:21/finish