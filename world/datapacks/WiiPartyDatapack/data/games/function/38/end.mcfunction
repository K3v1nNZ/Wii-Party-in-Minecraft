#   Author        =   @ T4Bl3rUs
#   Description   =   Ends the minigame and will run the next function of the game
#   Called By     =   games:27/end_game

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t

# Resets scores


# Removes all tags


# Kills all entities

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears all scheduled functions
schedule clear games:38/end
schedule clear games:38/gallery/start
schedule clear games:38/start_title 
schedule clear games:38/begin
schedule clear games:38/end_game
schedule clear games:38/gallery/internal/blue
schedule clear games:38/gallery/red
schedule clear games:38/gallery/internal/green 
schedule clear games:38/gallery/orange
schedule clear games:38/gallery/internal/orange 
schedule clear games:38/camera/enddisplay
schedule clear games:38/gallery/internal/red 
schedule clear games:38/gallery/green
schedule clear games:38/play_song

# Clears effects
effect clear @a[tag=ingame] minecraft:invisibility

scoreboard players set enabled= specOptions 0

xp set @a[tag=ingame] 0 points
xp set @a[tag=ingame] 0 levels