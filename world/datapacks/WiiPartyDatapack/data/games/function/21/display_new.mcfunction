scoreboard players set new= 21photo 1

effect clear @e[type=armor_stand,tag=21person] glowing
team leave @e[type=armor_stand,tag=21person]

execute as @a[team=blue,tag=ingame,tag=!21photo] if score new= 21photo matches 1 run function games:21/display_show
execute as @a[team=red,tag=ingame,tag=!21photo] if score new= 21photo matches 1 run function games:21/display_show
execute as @a[team=green,tag=ingame,tag=!21photo] if score new= 21photo matches 1 run function games:21/display_show
execute as @a[team=orange,tag=ingame,tag=!21photo] if score new= 21photo matches 1 run function games:21/display_show

