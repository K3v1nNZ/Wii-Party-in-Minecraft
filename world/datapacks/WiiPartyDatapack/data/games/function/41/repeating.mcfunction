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
execute if score ingame= 41scores matches 2 as @a[tag=ingame] at @s if predicate games:41crouch run function games:41/crouch
execute if score ingame= 41scores matches 2 as @a[tag=ingame,tag=41crouched] at @s unless predicate games:41crouch run function games:41/uncrouch