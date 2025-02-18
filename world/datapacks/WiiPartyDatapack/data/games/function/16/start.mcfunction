

scoreboard objectives add 16scores dummy

# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame= 16scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 16


# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.TropicalPunchName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.TropicalPunchName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.TropicalPunchName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.TropicalPunchName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.TropicalPunchName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.TropicalPunch.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.TropicalPunch.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.TropicalPunch.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

# Teleport all players to the minigame
tp @a[tag=ingame,team=blue] 16898.0 18 16984.0 -90 0
tp @a[tag=ingame,team=red] 16904.0 18 16978.0 0 0 
tp @a[tag=ingame,team=green] 16910.0 18 16984.0 90 0
tp @a[tag=ingame,team=orange] 16904.0 18 16990.0 180 0

spreadplayers 16906.0 16992.0 5 10 true @a[tag=playing,tag=!ingame]

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Schedules the next segment, which will display a title
schedule function games:16/start_title 5s

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Updates the scoreboard
scoreboard objectives add 16display dummy {"translate":"game.TropicalPunchName","bold":true}
scoreboard players set @a[tag=ingame] 48score 0
scoreboard objectives setdisplay sidebar 16display
function games:16/display


# Disable movement
execute as @a[tag=ingame] run attribute @s minecraft:generic.movement_speed base set 0
execute as @a[tag=ingame] run attribute @s minecraft:generic.jump_strength base set 0
execute as @a[tag=ingame] run attribute @s player.entity_interaction_range base set 0.75

# Create scoreboards
scoreboard objectives add 16arrow dummy
scoreboard objectives add 16charge dummy
scoreboard objectives add 16cooldown dummy
scoreboard objectives add 16boost dummy
scoreboard objectives add 16punchtimer dummy
scoreboard objectives add 16punchDelay dummy
scoreboard players reset @a 16boost

# Removes all tags
tag @a remove 16charging
tag @a remove 16dead

execute as @a[tag=ingame] run attribute @s generic.jump_strength base set 0

effect give @a[tag=ingame] haste infinite 255 true
# effect give @a[tag=ingame] mining_fatigue infinite 255 true


execute as @a[tag=ingame] run attribute @s generic.attack_speed base set 0

schedule function games:16/play_intro 16t