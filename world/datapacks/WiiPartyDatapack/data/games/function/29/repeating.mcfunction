

# Bossbar
scoreboard players operation bossbar= 29scores = maxTime= 29scores
scoreboard players operation bossbar= 29scores -= timer= 29scores

execute if score ingame= 29scores matches 2 store result bossbar minecraft:29bluetimer value run scoreboard players get bossbar= 29scores
execute if score ingame= 29scores matches 2 store result bossbar minecraft:29redtimer value run scoreboard players get bossbar= 29scores
execute if score ingame= 29scores matches 2 store result bossbar minecraft:29greentimer value run scoreboard players get bossbar= 29scores
execute if score ingame= 29scores matches 2 store result bossbar minecraft:29orangetimer value run scoreboard players get bossbar= 29scores
execute if score ingame= 29scores matches 2 store result bossbar minecraft:29spectimer value run scoreboard players get bossbar= 29scores