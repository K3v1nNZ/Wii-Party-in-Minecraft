#   Author        =   @ T4Bl3rUs
#   Description   =   Runs after the start countdown, lets the players start playing
#   Called By     =   games:38/start_title

# Set the start timer
scoreboard players operation timer= 38scores = timer= 38mods
scoreboard players set 2/4ths= 38scores 0
scoreboard players set 3/4ths= 38scores 0
scoreboard players operation 1/4th= 38scores = timer= 38scores
scoreboard players operation 1/4th= 38scores /= 4= 38scores
scoreboard players operation 2/4ths= 38scores += 1/4th= 38scores
scoreboard players operation 2/4ths= 38scores += 1/4th= 38scores
scoreboard players operation 3/4ths= 38scores += 1/4th= 38scores
scoreboard players operation 3/4ths= 38scores += 2/4ths= 38scores
scoreboard players operation 4/4ths= 38scores = 1/4th= 38scores
scoreboard players operation 4/4ths= 38scores *= 4= 38scores

# Clears the subtitle incase one is already being displayed
title @a[tag=playing] subtitle " "

# Displays Start! for all players, the colour dependant on their team
title @a[team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] title {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Start","bold":true}],"source":"storage","type":"nbt"}

# Ping sound effect for all players
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2
execute as @a[tag=playing] at @s run playsound ouo:start master @s ~ ~ ~ 3 1

# Reset scoreboards
scoreboard players reset @a 38pics
scoreboard players reset @a 38cd

# Shows that the game is now playing
scoreboard players set ingame= 38scores 2

# Add glowing to the entity
team leave @e[tag=game38]
effect give @e[tag=game38] minecraft:glowing infinite 0 true

function games:38/play_song

function games:38/camera/setup