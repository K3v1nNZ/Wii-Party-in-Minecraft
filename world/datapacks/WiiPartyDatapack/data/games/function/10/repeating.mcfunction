

#bossbar
execute store result bossbar minecraft:10bluetimer value run scoreboard players get timer= 10scores
execute store result bossbar minecraft:10redtimer value run scoreboard players get timer= 10scores
execute store result bossbar minecraft:10greentimer value run scoreboard players get timer= 10scores
execute store result bossbar minecraft:10orangetimer value run scoreboard players get timer= 10scores

# Prevent from leaving shooting spot
execute if score ingame= 10scores matches 1.. as @e[type=marker,tag=10marker,tag=blue] at @s unless entity @a[tag=ingame,team=blue,distance=..0.5] run tp @a[team=blue,tag=ingame] ~ ~ ~
execute if score ingame= 10scores matches 1.. as @e[type=marker,tag=10marker,tag=red] at @s unless entity @a[tag=ingame,team=red,distance=..0.5] run tp @a[team=red,tag=ingame] ~ ~ ~
execute if score ingame= 10scores matches 1.. as @e[type=marker,tag=10marker,tag=green] at @s unless entity @a[tag=ingame,team=green,distance=..0.5] run tp @a[team=green,tag=ingame] ~ ~ ~
execute if score ingame= 10scores matches 1.. as @e[type=marker,tag=10marker,tag=orange] at @s unless entity @a[tag=ingame,team=orange,distance=..0.5] run tp @a[team=orange,tag=ingame] ~ ~ ~


scoreboard players remove @a[tag=ingame,scores={10cooldown=1..}] 10cooldown 1
execute if score ingame= 10scores matches 2 as @a[tag=ingame,scores={rightClick=1..}] unless score @s 10cooldown matches 1.. at @s run function games:10/shoot
# SET XP
execute as @a[tag=ingame] unless score @s 10cooldown matches 1.. run function games:10/xp_reset
execute if score ingame= 10scores matches 2 as @a[tag=ingame] if score @s 10cooldown matches 1.. run function games:10/xp_set
#

execute as @e[type=armor_stand,tag=10can,tag=blue] at @s if block ~ 10 ~ red_wool run function games:10/hit_wall {"val":"0"}
execute as @e[type=armor_stand,tag=10can,tag=blue] at @s if block ~ 10 ~ pink_wool run function games:10/hit_wall {"val":"-0"}

execute as @e[type=armor_stand,tag=10can,tag=blue] at @s run function games:10/move_can {"color":"blue"}
execute as @e[type=armor_stand,tag=10can,tag=red] at @s run function games:10/move_can {"color":"red"}
execute as @e[type=armor_stand,tag=10can,tag=green] at @s run function games:10/move_can {"color":"green"}
execute as @e[type=armor_stand,tag=10can,tag=orange] at @s run function games:10/move_can {"color":"orange"}
#execute as @e[type=item_display,tag=10can] at @s run function games:10/spin_can 

#timer
execute if score ingame= 10scores matches 2 run scoreboard players remove timer= 10scores 1
execute if score ingame= 10scores matches 2 if score timer= 10scores matches 0 run function games:10/finish
execute if score timer= 10scores matches 0 run scoreboard players reset timer= 10scores



# Check if a can hits the ground
scoreboard players add @e[type=magma_cube,tag=10air] 10airdelay 1
execute if score ingame= 10scores matches 2 as @e[type=magma_cube,tag=10air] if score @s 10airdelay matches 5.. at @s unless block ~ ~-.1 ~ air run function games:10/hit_ground

# Spin cans that have been shot in the air
execute as @e[type=item_display,tag=10can,tag=10spin] at @s if block ~ ~-.1 ~ air run function games:10/calc_spin_can

# Score popup animation
execute as @e[type=text_display,tag=10score] at @s run function games:10/score_popup

# Prevents score going negative
execute as @a[tag=ingame] if score @s 10score matches ..-1 run scoreboard players set @s 10score 0

# Prevent gun dropping
execute if score ingame= 10scores matches 1.. as @a[tag=ingame] unless predicate games:10popgun run function games:10/new_gun

# Offhand stick for right click detection
clear @a[tag=ingame] minecraft:carrot_on_a_stick[minecraft:custom_data={10gun:1b}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{10gun:1b}}}}]
execute if score ingame= 10scores matches 1.. run item replace entity @a[tag=ingame] weapon.offhand with carrot_on_a_stick[unbreakable={},custom_model_data=1,custom_data={10gun:1b},hide_tooltip={},hide_additional_tooltip={}] 1

kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{popgun:1b}}}}]