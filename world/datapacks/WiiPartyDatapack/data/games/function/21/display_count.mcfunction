effect give @e[type=armor_stand,tag=21cur,limit=1] glowing
execute at @e[type=armor_stand,tag=21cur,limit=1] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 3 1.5

tag @e[type=armor_stand,tag=21cur,limit=1] remove 21cur

execute if entity @e[type=armor_stand,tag=21person,tag=21cur] run schedule function games:21/display_count 4t
execute unless entity @e[type=armor_stand,tag=21person,tag=21cur] run schedule function games:21/display_finish 8t