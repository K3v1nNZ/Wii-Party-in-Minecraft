#   Author        =   @ JevinLevin
#   Description   =   Resets the game and starts the next board parts
#   Called By     =   games:4/end_game

# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t


# Resets scores
scoreboard players set ingame= 4scores 0
scoreboard players set time= 4scores -10000

# Removes all tags
tag @a remove 4super
tag @a remove 4left
tag @a remove 4right
tag @a remove 4tryLeft
tag @a remove 4tryRight
tag @a remove 4hit
tag @a remove 4dead

# Kills all entities
kill @e[type=minecraft:armor_stand,tag=4powerup]
kill @e[type=minecraft:minecart,tag=4cart]
kill @e[type=minecraft:item_display,tag=4cart]
kill @e[type=minecraft:interaction,tag=4cart]
kill @e[type=minecraft:block_display,tag=4shot]

# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Gets rid of all the bossbars
bossbar set minecraft:4blue visible false
bossbar set minecraft:4red visible false
bossbar set minecraft:4green visible false
bossbar set minecraft:4orange visible false
bossbar set minecraft:4spectator visible false

# Clears the players carrot on a stick  from their offhand
clear @a[tag=ingame] minecraft:carrot_on_a_stick[minecraft:custom_data={4shoot:1b}]

# Removes all rails
kill @e[type=minecraft:item_frame,tag=4rail]

scoreboard players set enabled= specOptions 0

schedule clear games:4/end
schedule clear general:fade/main 
schedule clear games:4/new_powerup
schedule clear games:4/play_song
schedule clear games:4/starttitle
schedule clear games:4/begin

effect clear @a[tag=ingame] haste 

xp set @a[tag=ingame] 0 points
xp set @a[tag=ingame] 0 levels