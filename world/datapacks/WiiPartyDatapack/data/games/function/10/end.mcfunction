# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t


# Resets scores
scoreboard players set ingame= 10scores 0
scoreboard players set timer= 10scores 0
scoreboard players reset @a 10total

# Removes all tags


# Kills all entities
kill @e[type=armor_stand,tag=10can]
tp @e[type=magma_cube,tag=10hitbox] 0 -100 0
kill @e[type=magma_cube,tag=10hitbox]
kill @e[type=item_display,tag=10can]
kill @e[type=marker,tag=10marker]
kill @e[type=text_display,tag=10score]

# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears function scheduled if ended early
schedule clear games:10/starttitle
schedule clear games:10/starttitle2
schedule clear games:10/begin
schedule clear games:10/end
schedule clear general:fade/main
schedule clear games:10/spawn_cans
schedule clear games:10/play_song

# Gets rid of all the bossbars
bossbar set minecraft:10bluetimer visible false
bossbar set minecraft:10redtimer visible false
bossbar set minecraft:10greentimer visible false
bossbar set minecraft:10orangetimer visible false
bossbar set minecraft:10bluetimer players
bossbar set minecraft:10redtimer players
bossbar set minecraft:10greentimer players
bossbar set minecraft:10orangetimer players

# Clears the players carrot on a stick from their offhand
clear @a[tag=ingame] minecraft:carrot_on_a_stick[minecraft:custom_data={10gun:1b}]
clear @a[tag=ingame] minecraft:carrot_on_a_stick[minecraft:custom_data={popgun:1b}]

xp set @a[tag=ingame] 0 points
xp set @a[tag=ingame] 0 levels