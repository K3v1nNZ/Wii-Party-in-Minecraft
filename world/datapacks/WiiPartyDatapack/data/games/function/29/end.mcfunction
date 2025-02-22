
# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t

# Resets scores


# Kills all entities

# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears function scheduled if ended early
schedule clear games:29/start_title
schedule clear games:29/begin
schedule clear games:29/end
schedule clear games:29/play_song

# Gets rid of all the bossbars
bossbar set minecraft:29bluetimer visible false
bossbar set minecraft:29redtimer visible false
bossbar set minecraft:29greentimer visible false
bossbar set minecraft:29orangetimer visible false
bossbar set minecraft:29spectimer visible false
bossbar set minecraft:29bluetimer players
bossbar set minecraft:29redtimer players
bossbar set minecraft:29greentimer players
bossbar set minecraft:29orangetimer players
bossbar set minecraft:29spectimer players