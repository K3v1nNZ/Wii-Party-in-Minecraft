#   Author        =   @ JevinLevin
#   Description   =   Gives the players their placement tags (1st, 2nd, 3rd, 4th)
#   Called By     =   games:26/end_game

tag @a remove scored

# Resets the max= score to -1 to be compared
scoreboard players set max= 21score -1

# Sets the max= score to the highest value of a players score
scoreboard players operation max= 21score > @a[tag=ingame] 21score

# Checks if any player has the same score as the max= score, if so it means they have the highest score and gives them the 1st and scored tag
execute as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add 1st
execute as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add scored

# Stores the number of players who have been given a score into the scored= score
execute store result score scored= 21score if entity @a[tag=ingame,tag=scored]

# Resets the max= score to -1 to be compared
scoreboard players set max= 21score -1

# Sets the max= score to the highest value of a players score
scoreboard players operation max= 21score > @a[tag=ingame,tag=!scored] 21score

# Checks if any player has the same score as the max= score. Also checks how many players havent been scored yet, and gives the appropiate tag
execute if score scored= 21score matches 1 as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add 2nd
execute if score scored= 21score matches 1 as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add scored
execute if score scored= 21score matches 2 as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add 3rd
execute if score scored= 21score matches 2 as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add scored
execute if score scored= 21score matches 3 as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add 4th
execute if score scored= 21score matches 3 as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add scored

# Stores the number of players who have been given a score into the scored= score
execute store result score scored= 21score if entity @a[tag=ingame,tag=scored]

# Resets the max= score to -1 to be compared
scoreboard players set max= 21score -1

# Sets the max= score to the highest value of a players score
scoreboard players operation max= 21score > @a[tag=ingame,tag=!scored] 21score

# Checks if any player has the same score as the max= score. Also checks how many players havent been scored yet, and gives the appropiate tag
execute if score scored= 21score matches 2 as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add 3rd
execute if score scored= 21score matches 2 as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add scored
execute if score scored= 21score matches 3 as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add 4th
execute if score scored= 21score matches 3 as @a[tag=ingame] if score @s 21score = max= 21score run tag @s add scored

# Stores the number of players who have been given a score into the scored= score
execute store result score scored= 21score if entity @a[tag=ingame,tag=scored]

# If all players except one have been scored, then the final player is 4th
execute if score scored= 21score matches 3 run tag @a[tag=ingame,tag=!scored] add 4th
execute if score scored= 21score matches 3 run tag @a[tag=ingame,tag=!scored] add scored

# Resets the scored tags
tag @a[tag=ingame] remove scored