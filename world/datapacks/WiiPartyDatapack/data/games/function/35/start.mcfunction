

scoreboard objectives add 35scores dummy

# Sets the ingame score to -1, indicating that the game is starting
scoreboard players set ingame= 35scores -1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 35


# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.StrategyStepsName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.StrategyStepsName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.StrategyStepsName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.StrategyStepsName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.StrategyStepsName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.StrategySteps.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.StrategySteps.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.StrategySteps.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

# Teleport all players to the minigame
tp @a[tag=playing] 35078 67 35024 -90 0

spreadplayers 35078 35024 5 5 under 68 false @a[tag=ingame]
spreadplayers 35078 35024 5 5 under 68 true @a[tag=!ingame,tag=!playing]

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Schedules the next segment, which will display a title
schedule function games:35/start_title 5s

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Create scoreboards
scoreboard objectives add 35step dummy
scoreboard objectives add 35prev dummy
scoreboard players set @a[tag=ingame] 35step 0
scoreboard objectives add 35num dummy
scoreboard players set @a[tag=ingame] 35num 0
scoreboard players reset @a[tag=ingame] 35prev

# Updates the scoreboard
scoreboard objectives add 35display dummy {"translate":"game.StrategyStepsName","bold":true}
scoreboard players set @a[tag=ingame] 48score 0
scoreboard objectives setdisplay sidebar 35display
function games:35/display

scoreboard players reset countdown= 35scores
scoreboard players set show= 35scores 0



# Removes all tags


execute as @a[tag=ingame] run attribute @s generic.step_height base set 1

schedule function games:35/play_intro 54t

data modify storage game35 steps.blue set value ["0"]
data modify storage game35 steps.red set value ["0"]
data modify storage game35 steps.green set value ["0"]
data modify storage game35 steps.orange set value ["0"]