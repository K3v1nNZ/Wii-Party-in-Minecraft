execute if score init= 15scores matches 0 if loaded 16020 17 16002 run function games:15/init

execute as @e[type=sheep,tag=15sheep,tag=15leader] at @s run function games:15/sheep_tp

# Stop sheep escaping
execute positioned 16020 18 16003 as @e[tag=15sheep,dx=0,dy=10,dz=-2] at @s run tp @s 16019 ~ ~
# Stop players reentering
execute positioned 16020 18 16003 as @a[dx=-5,dy=10,dz=-2,tag=15finished] at @s run tp @s 16022 ~ ~


# End detection
execute if score ingame= 15scores matches 2 positioned 16020 18 16003 as @a[dx=5,dy=10,dz=-2,tag=!15finished] at @s run function games:15/reachend
execute store result score notfinished= 15scores if entity @a[tag=ingame,tag=!15finished]
execute if score ingame= 15scores matches 2 if score notfinished= 15scores matches ..1 run function games:15/finish

# Stop from escaping the wall
execute as @a[tag=ingame,tag=!15finished] at @s if block ~ 0 ~-.25 lime_concrete align z run tp @s ~ ~ ~-.5
execute as @a[tag=ingame,tag=!15finished] at @s if block ~ 0 ~.25 red_concrete align z run tp @s ~ ~ ~1.5

# Stop escaping after finishing
execute positioned 16026 18 16002 as @a[tag=ingame,tag=15finished,distance=15..] run tp @s ~ ~ ~


# Wheat offhand
clear @a[tag=ingame] wheat
execute if score ingame= 15scores matches 2 run item replace entity @a[tag=ingame,tag=!15finished] weapon.offhand with wheat[custom_model_data=1,custom_name='""',hide_tooltip={}]
kill @e[type=item,nbt={Item:{"id":"minecraft:wheat"}}]

# Timer
execute if score ingame= 15scores matches 2 run scoreboard players add @a[tag=ingame,tag=!15finished] 15timer 1