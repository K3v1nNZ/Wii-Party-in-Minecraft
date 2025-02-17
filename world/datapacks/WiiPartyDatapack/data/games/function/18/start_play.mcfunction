#   Author        =   @ T4Bl3rUs
#   Description   =   Starts the minigame
#   Called By     =   games:18/main_start

# Fade screen to black
#function general:fade/main

# Schedule next part
schedule function games:18/start_title 5s

# If the players voted on a practice round, then the practice= score is set to 1 to indicate that. This means the game will repeat again at the end
scoreboard players set practice= 18scores 0
execute if score practice= practice matches 1 run scoreboard players set practice= 18scores 1

# Resets both starting book scores
scoreboard players reset play= practice
scoreboard players reset practice= practice

# Removes the tutorial lecterns
#schedule function games:18/remove_lecterns 1s

# Setup
function games:18/setup

# Shows that the game is now beginning
execute store result score ingame= 18scores if entity @a[tag=ingame]

# Clears actionbar title
title @a[tag=playing] actionbar ""

schedule function games:18/play_intro 22t