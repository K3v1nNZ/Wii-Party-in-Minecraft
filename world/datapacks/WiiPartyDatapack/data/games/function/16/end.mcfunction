
# Resets the global minigame score after the game ends
execute if score playing= lobby matches 1 if score testing options matches 0 run scoreboard players reset global minigame

# Schedules the the draw segment in 12 ticks
execute if score playing= lobby matches 1 if score testing options matches 0 run schedule function board:draw/startstart 1t

# Return to lobby if playing just minigame
execute if score playing= lobby matches 2 run schedule function lobby:return_to_lobby 1t

# Resets scores
scoreboard players set ingame= 16scores 0
scoreboard players reset @a 16charge
scoreboard players reset @a 16punchtimer

# Removes all tags
tag @a remove 16charging
tag @a remove 16dead
tag @a remove 16charged
tag @a remove 16hitBlue
tag @a remove 16hitRed
tag @a remove 16hitGreen
tag @a remove 16hitOrange

# Kills all entities
kill @e[type=interaction,tag=16interact]

# Puts all players who have died back into adventure
gamemode adventure @a[tag=ingame]

# Hides the scoreboard
scoreboard objectives setdisplay sidebar

# Clears function scheduled if ended early
schedule clear games:16/start_title
schedule clear games:16/begin
schedule clear games:16/end
schedule clear games:16/play_song


# Enable movement
execute as @a[tag=ingame] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
execute as @a run attribute @s player.entity_interaction_range base set 3.0

effect clear @a[tag=ingame] haste

execute as @a[tag=ingame] run attribute @s generic.attack_speed base set 4.0

clear @a[tag=ingame] crossbow
clear @a[tag=ingame] carrot_on_a_stick
clear @a[tag=ingame] arrow

team modify blue collisionRule never
team modify red collisionRule never
team modify green collisionRule never
team modify orange collisionRule never

xp set @a[tag=ingame] 0 points
xp set @a[tag=ingame] 0 levels