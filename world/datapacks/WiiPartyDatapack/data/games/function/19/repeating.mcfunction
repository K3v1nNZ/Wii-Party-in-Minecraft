execute if score ingame= 19scores matches 2 run scoreboard players add timer= 19scores 1
execute if score timer= 19scores matches 1 run scoreboard players set mod= 19scores 40
execute if score timer= 19scores matches 200 run scoreboard players set mod= 19scores 30
execute if score timer= 19scores matches 400 run scoreboard players set mod= 19scores 20

scoreboard players operation spawn= 19scores = timer= 19scores
scoreboard players operation spawn= 19scores %= mod= 19scores 

execute if score ingame= 19scores matches 2 if score spawn= 19scores matches 0 run function games:19/feather_spawn

# Feather tick
execute as @e[type=item_display,tag=19feather] at @s if block ~ ~-0.2 ~ #board:dice_proof run tp @s ~ ~-0.15 ~
execute as @e[type=item_display,tag=19feather] at @s store result entity @s Air double 1 run time query gametime
execute as @e[type=item_display,tag=19feather,tag=default] at @s run particle dust{color:[0.914,0.569,1.000],scale:0.5} ~ ~ ~ .5 .5 .5 0.1 3 force
execute as @e[type=item_display,tag=19feather,tag=golden] at @s run particle dust{color:[1.000,0.792,0.220],scale:0.5} ~ ~ ~ .5 .5 .5 0.1 3 force
execute as @e[type=item_display,tag=19feather,tag=bad] at @s run particle dust{color:[0.0,0.0,0.0],scale:0.5} ~ ~ ~ .5 .5 .5 0.1 3 force

# Collect feathers
execute if score ingame= 19scores matches 2 as @a[tag=ingame] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[type=item_display,tag=19feather,dx=0,dy=1,dz=0] run function games:19/feather_collect

execute if score ingame= 19scores matches 2 if score timer= 19scores >= maxTime= 19scores run function games:19/finish

execute as @e[type=text_display,tag=19popup] at @s run function games:19/popup_anim

# Bossbar
scoreboard players operation bossbar= 19scores = maxTime= 19scores
scoreboard players operation bossbar= 19scores -= timer= 19scores

execute if score ingame= 19scores matches 2 store result bossbar minecraft:19bluetimer value run scoreboard players get bossbar= 19scores
execute if score ingame= 19scores matches 2 store result bossbar minecraft:19redtimer value run scoreboard players get bossbar= 19scores
execute if score ingame= 19scores matches 2 store result bossbar minecraft:19greentimer value run scoreboard players get bossbar= 19scores
execute if score ingame= 19scores matches 2 store result bossbar minecraft:19orangetimer value run scoreboard players get bossbar= 19scores
execute if score ingame= 19scores matches 2 store result bossbar minecraft:19spectimer value run scoreboard players get bossbar= 19scores