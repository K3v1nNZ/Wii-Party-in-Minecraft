execute if score ingame= 41scores matches 2 run scoreboard players add timer= 41scores 1
execute if score ingame= 41scores matches 2 if score timer= 41scores >= maxTime= 41scores run function games:41/finish

# Bossbar
scoreboard players operation bossbar= 41scores = maxTime= 41scores
scoreboard players operation bossbar= 41scores -= timer= 41scores

execute if score ingame= 41scores matches 2 store result bossbar minecraft:41bluetimer value run scoreboard players get bossbar= 41scores
execute if score ingame= 41scores matches 2 store result bossbar minecraft:41redtimer value run scoreboard players get bossbar= 41scores
execute if score ingame= 41scores matches 2 store result bossbar minecraft:41greentimer value run scoreboard players get bossbar= 41scores
execute if score ingame= 41scores matches 2 store result bossbar minecraft:41orangetimer value run scoreboard players get bossbar= 41scores
execute if score ingame= 41scores matches 2 store result bossbar minecraft:41spectimer value run scoreboard players get bossbar= 41scores

# Crouch detection
# Unset barrier
execute as @a[tag=ingame,scores={41jump=1..}] run attribute @s generic.gravity base set 0.04
tag @a[tag=ingame,scores={41jump=1..}] add 41jump
scoreboard players add @a[tag=ingame,scores={41sneak=1}] 41sneakTime 1
scoreboard players set @a[tag=ingame,scores={41sneak=0}] 41sneakTime 0
execute if score ingame= 41scores matches 2 as @a[tag=ingame,tag=!41crouched,tag=41jump,scores={41sneakTime=1..3}] at @s run function games:41/crouch
execute if score ingame= 41scores matches 2 as @a[tag=ingame,tag=41crouched,scores={41sneakTime=0}] at @s run function games:41/uncrouch
execute if score ingame= 41scores matches 2 as @a[tag=ingame,tag=41jump] at @s if predicate games:41on_ground run function games:41/land
scoreboard players set @a[tag=ingame] 41jump 0
scoreboard players set @a[tag=ingame] 41sneak 0

# Mke sure player doesnt run away
execute as @e[type=item_display,tag=41stand,tag=blue] at @s positioned ~-0.5 ~ ~-0.5 unless entity @a[dx=0,dy=3,dz=0,team=blue] at @s run tp @a[tag=ingame,team=blue] ~ ~1 ~
execute as @e[type=item_display,tag=41stand,tag=red] at @s positioned ~-0.5 ~ ~-0.5 unless entity @a[dx=0,dy=3,dz=0,team=red] at @s run tp @a[tag=ingame,team=red] ~ ~1 ~
execute as @e[type=item_display,tag=41stand,tag=green] at @s positioned ~-0.5 ~ ~-0.5 unless entity @a[dx=0,dy=3,dz=0,team=green] at @s run tp @a[tag=ingame,team=green] ~ ~1 ~
execute as @e[type=item_display,tag=41stand,tag=orange] at @s positioned ~-0.5 ~ ~-0.5 unless entity @a[dx=0,dy=3,dz=0,team=orange] at @s run tp @a[tag=ingame,team=orange] ~ ~1 ~