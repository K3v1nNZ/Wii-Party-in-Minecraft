
# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t

# Resets scores
scoreboard players reset ingame= 35scores
scoreboard players reset countdown= 35scores
scoreboard players reset travel= 35scores
scoreboard players reset show= 35scores
scoreboard players reset @a 35num
scoreboard players reset @a 35prev
scoreboard players reset @a 35step

# Removes all tags
tag @a remove 35move
tag @a remove 35lock
tag @a remove 35finished

# Kills all entities
kill @e[type=marker,tag=35step]
kill @e[type=text_display,tag=35step]


# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears function scheduled if ended early
schedule clear games:35/start_title
schedule clear games:35/begin
schedule clear games:35/end
schedule clear games:35/play_song
schedule clear games:35/start_countdown
schedule clear games:35/travel_start
schedule clear games:35/travel_end
schedule clear games:35/results_register
schedule clear games:35/results_show

execute as @a run attribute @s generic.step_height base set 0.6