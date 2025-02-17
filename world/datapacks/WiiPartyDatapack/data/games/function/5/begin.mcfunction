#   Author        =   @ JevinLevin
#   Description   =   Starts the firework choosing
#   Called By     =   games:5/start


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

# Sets the ingame score to 2, this signifies that the game has actually started
scoreboard players set ingame= 5scores 2

# Fills in the ground below each firework for raycast detection
# 4 Players
    # Left
execute unless score players= 5scores matches 3 run fill 4997 00 5012 4996 2 5010 minecraft:magenta_concrete
    # 2nd to Left
execute unless score players= 5scores matches 3 run fill 5001 0 5012 5000 2 5010 minecraft:magenta_concrete
    # 2nd to Right
execute unless score players= 5scores matches 3 run fill 5005 0 5012 5004 2 5010 minecraft:magenta_concrete
    # Right
execute unless score players= 5scores matches 3 run fill 5009 0 5012 5008 2 5010 minecraft:magenta_concrete
# 3 Players
    # Left
execute if score players= 5scores matches 3 run fill 4998 0 5012 4999 2 5010 minecraft:magenta_concrete
    # Middle
execute if score players= 5scores matches 3 run fill 5002 0 5012 5003 2 5010 minecraft:magenta_concrete
    # Right
execute if score players= 5scores matches 3 run fill 5006 0 5012 5007 2 5010 minecraft:magenta_concrete

schedule function games:5/play_intro 10t