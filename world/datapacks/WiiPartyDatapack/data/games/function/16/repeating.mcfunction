kill @e[type=#minecraft:arrows]

scoreboard players remove @a[tag=ingame,scores={16punchtimer=0..}] 16punchtimer 1
execute as @a[tag=ingame,scores={16punchtimer=0}] run attribute @s generic.attack_speed base set 0.0


execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16dead,tag=!16punched,tag=16charged] unless predicate games:16punch run function games:16/give_punch
execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16dead,tag=!16punched,tag=16charged] if predicate games:16punch unless data entity @s SelectedItem.components.minecraft:charged_projectiles run function games:16/give_punch

# Charge logic
scoreboard players remove @a[tag=ingame,scores={16cooldown=1..}] 16cooldown 1
scoreboard players add @a[tag=16charging,tag=!16dead] 16charge 1
execute if score ingame= 16scores matches 2 as @a[tag=ingame, tag=!16charged,tag=!16dead] run function games:16/interaction_small
execute if score ingame= 16scores matches 2 as @a[tag=ingame, scores={16charge=16}] run function games:16/interaction_big
execute as @a[scores={16charge=17},tag=!16charged] at @s run function games:16/charged
# execute as @a[scores={16charge=20..}] at @s run function games:16/punch
scoreboard players reset @a[tag=!16charging] 16charge
tag @a remove 16charging

# Set xp
execute as @a[tag=ingame,tag=!16charged] unless score @s 16charge matches 1.. run function games:16/xp_reset
execute as @a[tag=ingame] if score @s 16charge matches 1.. run function games:16/xp_set
#

# Use Punch
execute as @a[tag=ingame,scores={16punchDelay=0},tag=!16dead] at @s run function games:16/punch
scoreboard players remove @a[tag=ingame,scores={16punchDelay=0..}] 16punchDelay 1

# Give/Kill items
execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16dead,tag=!16punched,tag=!16charged] unless predicate games:16crossbow run function games:16/give_crossbow
execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16dead,tag=!16charged] unless score @s 16cooldown matches 1.. unless predicate games:16arrow run function games:16/give_arrow
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{16punch:1b}}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{16punch:2}}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{16temp:1b}}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:arrow",count:1,components:{"minecraft:custom_data":{16punch:1b}}}}]

clear @a[tag=playing,tag=!ingame]
clear @a[tag=16dead]

# Kill arrows
execute as @e[type=arrow,tag=16arrow] run scoreboard players add @s 16arrow 1
kill @e[type=arrow,tag=16arrow,scores={16arrow=2..}]
kill @e[type=arrow,tag=16arrow,nbt={inGround:1b}]


# Death detection
execute if score ingame= 16scores matches 2 as @a[tag=ingame,tag=!16dead] at @s if entity @s[y=13,dy=-10] run function games:16/die

# End logic
execute store result score alive= 16scores if entity @a[tag=ingame,tag=!16dead]
execute if score ingame= 16scores matches 2 if score alive= 16scores matches ..1 run function games:16/finish

# Tp interactions
execute as @a[tag=ingame,team=blue,tag=!16dead] at @s anchored eyes positioned ^ ^ ^0.25 run tp @e[type=interaction,tag=blue,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=red,tag=!16dead] at @s anchored eyes positioned ^ ^ ^0.25 run tp @e[type=interaction,tag=red,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=green,tag=!16dead] at @s anchored eyes positioned ^ ^ ^0.25 run tp @e[type=interaction,tag=green,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=orange,tag=!16dead] at @s anchored eyes positioned ^ ^ ^0.25 run tp @e[type=interaction,tag=orange,tag=16interact] ~ ~-0.5 ~
execute as @a[tag=ingame,team=blue,tag=16dead] at @s anchored eyes positioned ^ ^ ^0.25 run tp @e[type=interaction,tag=blue,tag=16interact] ~ ~-25 ~
execute as @a[tag=ingame,team=red,tag=16dead] at @s anchored eyes positioned ^ ^ ^0.25 run tp @e[type=interaction,tag=red,tag=16interact] ~ ~-25 ~
execute as @a[tag=ingame,team=green,tag=16dead] at @s anchored eyes positioned ^ ^ ^0.25 run tp @e[type=interaction,tag=green,tag=16interact] ~ ~-25 ~
execute as @a[tag=ingame,team=orange,tag=16dead] at @s anchored eyes positioned ^ ^ ^0.25 run tp @e[type=interaction,tag=orange,tag=16interact] ~ ~-25 ~

# Actionbar controls
execute if score ingame= 16scores matches 2 run title @a[tag=!16dead,tag=ingame,team=blue,tag=!16charged] actionbar {"translate":"game.TropicalPunch.Info.1","color":"gray","with":[{"translate":"control.RightClick","color":"#0088ff","bold":true}]}
execute if score ingame= 16scores matches 2 run title @a[tag=!16dead,tag=ingame,team=red,tag=!16charged] actionbar {"translate":"game.TropicalPunch.Info.1","color":"gray","with":[{"translate":"control.RightClick","color":"red","bold":true}]}
execute if score ingame= 16scores matches 2 run title @a[tag=!16dead,tag=ingame,team=green,tag=!16charged] actionbar {"translate":"game.TropicalPunch.Info.1","color":"gray","with":[{"translate":"control.RightClick","color":"green","bold":true}]}
execute if score ingame= 16scores matches 2 run title @a[tag=!16dead,tag=ingame,team=orange,tag=!16charged] actionbar {"translate":"game.TropicalPunch.Info.1","color":"gray","with":[{"translate":"control.RightClick","color":"gold","bold":true}]}
execute if score ingame= 16scores matches 2 run title @a[tag=!16dead,tag=ingame,team=blue,tag=16charged] actionbar {"translate":"game.TropicalPunch.Info.2","color":"gray","with":[{"translate":"control.LeftClick","color":"#0088ff","bold":true}]}
execute if score ingame= 16scores matches 2 run title @a[tag=!16dead,tag=ingame,team=red,tag=16charged] actionbar {"translate":"game.TropicalPunch.Info.2","color":"gray","with":[{"translate":"control.LeftClick","color":"red","bold":true}]}
execute if score ingame= 16scores matches 2 run title @a[tag=!16dead,tag=ingame,team=green,tag=16charged] actionbar {"translate":"game.TropicalPunch.Info.2","color":"gray","with":[{"translate":"control.LeftClick","color":"green","bold":true}]}
execute if score ingame= 16scores matches 2 run title @a[tag=!16dead,tag=ingame,team=orange,tag=16charged] actionbar {"translate":"game.TropicalPunch.Info.2","color":"gray","with":[{"translate":"control.LeftClick","color":"gold","bold":true}]}

advancement revoke @a only games:16/left_click
