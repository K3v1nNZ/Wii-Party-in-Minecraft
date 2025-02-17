#   Author        =   @ JevinLevin
#   Description   =   Runs once the player dies
#   Called By     =   games:4/dying


# Gives the 4dead tag
tag @s add 4dead

# Puts the player into spectator
gamemode spectator

# Removes the players slow falling as they no longer need to stop falling
effect clear @s minecraft:slow_falling

# Removes the players 4hit tag which is used to run the death animation
tag @s remove 4hit

# Resets the players 4deathTimer score, used to time things in the death animation
scoreboard players reset @s 4deathTimer

# Kills all the carts of the people who just died
execute if entity @s[team=blue] run kill @e[type=minecraft:item_display,tag=4cart,tag=blue]
execute if entity @s[team=red] run kill @e[type=minecraft:item_display,tag=4cart,tag=red]
execute if entity @s[team=green] run kill @e[type=minecraft:item_display,tag=4cart,tag=green]
execute if entity @s[team=orange] run kill @e[type=minecraft:item_display,tag=4cart,tag=orange]
execute if entity @s[team=blue] run kill @e[type=minecraft:interaction,tag=4cart,tag=blue]
execute if entity @s[team=red] run kill @e[type=minecraft:interaction,tag=4cart,tag=red]
execute if entity @s[team=green] run kill @e[type=minecraft:interaction,tag=4cart,tag=green]
execute if entity @s[team=orange] run kill @e[type=minecraft:interaction,tag=4cart,tag=orange]

tag @s remove 4left
tag @s remove 4right
title @s actionbar ""

tag @s remove 4super
scoreboard players reset @s 4powerup

execute if score ingame= 4scores matches 0 run return fail 

# Stores the number of players who arent dead in the left= score. Used to determine what position tag to give the player
execute store result score left= 4scores if entity @a[tag=ingame,tag=!4dead]
    # If there is one other player left, they are 2nd
execute if score left= 4scores matches 1 run tag @s add 2nd
    # If there are 2 other players left, they are 3rd
execute if score left= 4scores matches 2 run tag @s add 3rd
    # If there are 3 other players left, they are 4th
execute if score left= 4scores matches 3 run tag @s add 4th

# Runs the scoreboard function to update it
function games:4/display