#   Author        =   @ JevinLevin
#   Description   =   Runs once all the dice have been thrown and stop bouncing
#   Called By     =   board:dice_roll/settle


# Sets all the diceDespawn timers to the duration= score so that they both explode at the same time
scoreboard players operation @e[type=minecraft:chicken,tag=diceroll] diceDespawn = duration= diceDespawn

# Adds the players diceRoll score to their boardPos
scoreboard players operation @a[tag=turn] newBoardPos += @a[tag=turn] diceRoll

# If it goes over 90 then it sets it back down to 90
scoreboard players set @a[tag=turn,scores={newBoardPos=91..},tag=!volcano] newBoardPos 90
#scoreboard players set @a[tag=turn,scores={newBoardPos=111..}] newBoardPos 110

# Displays title for everyone, saying the total number the player scored
execute if entity @a[tag=turn,team=blue] run title @a[tag=playing] title [{"score":{"name":"@a[tag=turn,limit=1]","objective":"diceRoll"},"color":"#0088ff"}]
execute if entity @a[tag=turn,team=red] run title @a[tag=playing] title [{"score":{"name":"@a[tag=turn,limit=1]","objective":"diceRoll"},"color":"red"}]
execute if entity @a[tag=turn,team=green] run title @a[tag=playing] title [{"score":{"name":"@a[tag=turn,limit=1]","objective":"diceRoll"},"color":"green"}]
execute if entity @a[tag=turn,team=orange] run title @a[tag=playing] title [{"score":{"name":"@a[tag=turn,limit=1]","objective":"diceRoll"},"color":"gold"}]

# With that title, it also displays a subitle with the numbers that the players rolled 
# Not Double
execute unless score double= dice matches 1 as @a[tag=turn,tag=1st] run title @a[tag=playing] subtitle [{"translate":"board.DiceRoll.RollResult","with":[{"selector":"@s","color":"gray"},{"score":{"name":"normal=","objective":"dice"},"color":"white"},{"score":{"name":"golden=","objective":"dice"},"color":"#E0BF7D"}],"color":"gray"}]
execute unless score double= dice matches 1 as @a[tag=turn,tag=2nd] run title @a[tag=playing] subtitle [{"translate":"board.DiceRoll.RollResult","with":[{"selector":"@s","color":"gray"},{"score":{"name":"normal=","objective":"dice"},"color":"white"},{"score":{"name":"silver=","objective":"dice"},"color":"#AFD0DB"}],"color":"gray"}]
execute unless score double= dice matches 1 as @a[tag=turn,tag=3rd] run title @a[tag=playing] subtitle [{"translate":"board.DiceRoll.RollResult","with":[{"selector":"@s","color":"gray"},{"score":{"name":"normal=","objective":"dice"},"color":"white"},{"score":{"name":"bronze=","objective":"dice"},"color":"#B87050"}],"color":"gray"}]
execute unless score double= dice matches 1 as @a[tag=turn,tag=4th] run title @a[tag=playing] subtitle [{"translate":"board.DiceRoll.RollResult4th","with":[{"selector":"@s","color":"gray"},{"score":{"name":"normal=","objective":"dice"},"color":"white"}],"color":"gray"}]
# Double
execute if score double= dice matches 1 as @a[tag=turn,tag=1st] run title @a[tag=playing] subtitle [{"translate":"board.DiceRoll.RollResultDouble","with":[{"selector":"@s","color":"gray"},{"score":{"name":"normal=","objective":"dice"},"color":"white"},{"score":{"name":"golden=","objective":"dice"},"color":"#E0BF7D"},{"score":{"name":"doubleroll=","objective":"dice"},"color":"white"}],"color":"gray"}]
execute if score double= dice matches 1 as @a[tag=turn,tag=2nd] run title @a[tag=playing] subtitle [{"translate":"board.DiceRoll.RollResultDouble","with":[{"selector":"@s","color":"gray"},{"score":{"name":"normal=","objective":"dice"},"color":"white"},{"score":{"name":"silver=","objective":"dice"},"color":"#AFD0DB"},{"score":{"name":"doubleroll=","objective":"dice"},"color":"white"}],"color":"gray"}]
execute if score double= dice matches 1 as @a[tag=turn,tag=3rd] run title @a[tag=playing] subtitle [{"translate":"board.DiceRoll.RollResultDouble","with":[{"selector":"@s","color":"gray"},{"score":{"name":"normal=","objective":"dice"},"color":"white"},{"score":{"name":"bronze=","objective":"dice"},"color":"#B87050"},{"score":{"name":"doubleroll=","objective":"dice"},"color":"white"}],"color":"gray"}]

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 3 0.5

# Sets the moving= score to 1 to show that the player is now moving
execute unless score dino= tiles matches 1.. run scoreboard players set moving= dice 1

# Gives the player the skip item in their last slot
execute as @a[tag=turn] run function board:dice_roll/give/skip

# Runs the glowing_tile function as the player, which spawns a glowing tile at the tile location the player has to go
execute as @a[tag=turn] run function board:dice_roll/glowing_tile

# Does some math to determin the max time the player has to travel to their tile
    # First sets the timermax= value to 3
scoreboard players set timermax= dice 3
    # Times that by the total number the player rolled
scoreboard players operation timermax= dice *= @a[tag=turn] diceRoll
    # Adds 10 onto that number
scoreboard players add timermax= dice 10
    # Finally it times' it by 20 to convert it from ticks to seconds
scoreboard players operation timermax= dice *= 20 Numbers

# Puts the barriers back around the tile
execute at @e[type=minecraft:area_effect_cloud,tag=tileCloud] run fill ~23 ~5 ~23 ~-23 ~-9 ~-22 minecraft:barrier replace minecraft:void_air

# Removes the tileCloud entity
kill @e[type=minecraft:area_effect_cloud,tag=tileCloud]

# Runs function that fill barriers that stop players going too far forwards or backwards
function board:dice_roll/prevent/clear_too_far
execute as @a[tag=turn] run function board:dice_roll/prevent/forward_prevention

# Advancement
execute if score total= dice matches 3 if score @a[tag=turn,limit=1] diceRoll matches 3 run advancement grant @a[tag=turn] only advancements:island/triple
execute if score total= dice matches 3 if score @a[tag=turn,limit=1] diceRoll matches 6 run advancement grant @a[tag=turn] only advancements:island/triple
execute if score total= dice matches 3 if score @a[tag=turn,limit=1] diceRoll matches 9 run advancement grant @a[tag=turn] only advancements:island/triple
execute if score total= dice matches 3 if score @a[tag=turn,limit=1] diceRoll matches 12 run advancement grant @a[tag=turn] only advancements:island/triple
execute if score total= dice matches 3 if score @a[tag=turn,limit=1] diceRoll matches 15 run advancement grant @a[tag=turn] only advancements:island/triple
execute if score total= dice matches 3 if score @a[tag=turn,limit=1] diceRoll matches 18 run advancement grant @a[tag=turn] only advancements:island/triple
