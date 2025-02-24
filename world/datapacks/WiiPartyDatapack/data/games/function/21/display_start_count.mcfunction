execute if entity @a[tag=ingame,tag=21cur,team=blue] run tag @e[type=armor_stand,tag=21person,tag=21bluevalid] add 21cur
execute if entity @a[tag=ingame,tag=21cur,team=red] run tag @e[type=armor_stand,tag=21person,tag=21redvalid] add 21cur
execute if entity @a[tag=ingame,tag=21cur,team=green] run tag @e[type=armor_stand,tag=21person,tag=21greenvalid] add 21cur
execute if entity @a[tag=ingame,tag=21cur,team=orange] run tag @e[type=armor_stand,tag=21person,tag=21orangevalid] add 21cur
execute if entity @a[tag=ingame,tag=21cur,team=blue] run team join blue @e[type=armor_stand,tag=21person]
execute if entity @a[tag=ingame,tag=21cur,team=red] run team join red @e[type=armor_stand,tag=21person]
execute if entity @a[tag=ingame,tag=21cur,team=green] run team join green @e[type=armor_stand,tag=21person]
execute if entity @a[tag=ingame,tag=21cur,team=orange] run team join orange @e[type=armor_stand,tag=21person]

execute if entity @e[type=armor_stand,tag=21person,tag=21cur] run function games:21/display_count
execute unless entity @e[type=armor_stand,tag=21person,tag=21cur] run schedule function games:21/display_new 2s