summon item_display 20000 25 20009 {Tags:["19feather","19temp"],NoGravity:1b,billboard:"center",teleport_duration:0,item_display:"ground",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:feather",count:1,components:{"minecraft:custom_model_data":1}},Glowing:1b}

# Feather type
execute store result score random= 19scores run random value 1..7
execute if score random= 19scores matches 1..5 run tag @e[type=item_display,tag=19temp] add default
execute if score random= 19scores matches 6 run tag @e[type=item_display,tag=19temp] add golden
execute if score random= 19scores matches 7 run tag @e[type=item_display,tag=19temp] add bad

execute as @e[type=item_display,tag=19temp,tag=golden] run data modify entity @s item.components."minecraft:custom_model_data" set value 2
execute as @e[type=item_display,tag=19temp,tag=bad] run data modify entity @s item.components."minecraft:custom_model_data" set value 3

team join t.Pink @e[type=item_display,tag=19temp,tag=default]
team join t.Orange @e[type=item_display,tag=19temp,tag=golden]
team join black @e[type=item_display,tag=19temp,tag=bad]




scoreboard players set limit= 19scores 0
execute as @e[type=item_display,tag=19temp] at @s run function games:19/feather_spread

execute as @e[type=item_display,tag=19temp] at @s run tp @s ~ 35 ~


execute as @e[type=item_display,tag=19temp] run data merge entity @s {teleport_duration:1}

tag @e remove 19temp