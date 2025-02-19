#   Author        =   @ JevinLevin
#   Description   =   Ends the minigame and will run the next function of the game
#   Called By     =   games:26/end_game

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t

# Resets scores
scoreboard players reset random= 26scores
scoreboard players reset @a 26points
scoreboard players reset ingame= 26scores
scoreboard players reset timer= 26scores
scoreboard players reset practice= 26scores
scoreboard players reset end= 26scores

# Removes all tags
tag @a remove recover

# Kills all entities
kill @e[type=minecraft:area_effect_cloud,tag=hole]
tp @e[type=minecraft:slime,tag=mole] ~ -70 ~
tp @e[type=minecraft:armor_stand,tag=mole] ~ -70 ~
tp @e[type=minecraft:slime,tag=hitBlock] ~ -70 ~
kill @e[tag=mole]
kill @e[type=minecraft:armor_stand,tag=knocked]
kill @e[type=minecraft:text_display,tag=points]
kill @e[tag=26boat]

title @a[tag=playing] actionbar ""


# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears all scheduled functions
schedule clear games:26/new_mole

# Stops players from seeing the bossbar
bossbar set minecraft:26blue visible false
bossbar set minecraft:26red visible false
bossbar set minecraft:26green visible false
bossbar set minecraft:26orange visible false

# Stops the players from being able to collide with mobs again
team modify blue collisionRule never
team modify red collisionRule never
team modify green collisionRule never
team modify orange collisionRule never

# Clears hammer 
clear @a[tag=ingame] minecraft:carrot_on_a_stick[minecraft:custom_data={hammer:1b}]

# Removes all fake stair item frames
kill @e[type=minecraft:item_frame,tag=26fakeStair]

# Clears effects
effect clear @a[tag=ingame] minecraft:haste

scoreboard players set enabled= specOptions 0

schedule clear games:26/new_mole
schedule clear games:26/end
schedule clear games:26/start_title
schedule clear games:26/remove_lecterns
schedule clear games:26/begin
schedule clear games:26/play_song

xp set @a[tag=ingame] 0 points
xp set @a[tag=ingame] 0 levels