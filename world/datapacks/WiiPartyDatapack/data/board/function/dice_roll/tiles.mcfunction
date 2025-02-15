#   Author        =   @ JevinLevin
#   Description   =   Runs every tick while the player is moving to their new tile
#   Called By     =   board:dice_roll/main


# Shows actionbar title for the moving player, saying which tile they need to move to
    # If the player isnt in the volcano
    execute unless score final= tiles matches 1.. run title @s[team=blue,tag=!volcano] actionbar [{"translate":"board.DiceRoll.MoveTo","color":"#0088ff","with":[{"score":{"name":"@s","objective":"newBoardPos"}}]}]
    execute unless score final= tiles matches 1.. run title @s[team=red,tag=!volcano] actionbar [{"translate":"board.DiceRoll.MoveTo","color":"red","with":[{"score":{"name":"@s","objective":"newBoardPos"}}]}]
    execute unless score final= tiles matches 1.. run title @s[team=green,tag=!volcano] actionbar [{"translate":"board.DiceRoll.MoveTo","color":"green","with":[{"score":{"name":"@s","objective":"newBoardPos"}}]}]
    execute unless score final= tiles matches 1.. run title @s[team=orange,tag=!volcano] actionbar [{"translate":"board.DiceRoll.MoveTo","color":"gold","with":[{"score":{"name":"@s","objective":"newBoardPos"}}]}]
    # If the player is in the volcano
    # First it needs to remove 100 from the players newBoardPos, so it stores the newBoardPos score into the temp= score
execute if entity @s[tag=volcano] run scoreboard players operation temp= newBoardPos = @s newBoardPos
    # Next it removes 100 from that temp= score
execute if entity @s[tag=volcano] run scoreboard players remove temp= newBoardPos 100
    # If that score is above 10 then it goes past the board, so it sets it back down to 10
execute if entity @s[tag=volcano] if score temp= newBoardPos matches 11.. run scoreboard players set temp= newBoardPos 10
    # Actionbar titles saying which tile to move to (UNLESS ON FINAL TILE)
    title @s[team=blue,tag=volcano] actionbar [{"translate":"board.DiceRoll.MoveTo","color":"#0088ff","with":[{"score":{"name":"temp=","objective":"newBoardPos"}}]}]
    title @s[team=red,tag=volcano] actionbar [{"translate":"board.DiceRoll.MoveTo","color":"red","with":[{"score":{"name":"temp=","objective":"newBoardPos"}}]}]
    title @s[team=green,tag=volcano] actionbar [{"translate":"board.DiceRoll.MoveTo","color":"green","with":[{"score":{"name":"temp=","objective":"newBoardPos"}}]}]
    title @s[team=orange,tag=volcano] actionbar [{"translate":"board.DiceRoll.MoveTo","color":"gold","with":[{"score":{"name":"temp=","objective":"newBoardPos"}}]}]
    # Resets the temp score (since its temporary)
scoreboard players reset temp= newBoardPos

<<<<<<< HEAD
# Action bar for other players
tag @s add ignore
title @a[tag=playing,tag=!ignore] actionbar [{"translate":"board.DiceRoll.IsMoving","color":"gray","with":[{"selector":"@a[tag=ignore]"}],"font":"ult_effects:top_left_anchor"}," ",{"translate":"board.DiceRoll.IsMoving","color":"gray","with":[{"selector":"@a[tag=ignore]"}],"font":"ult_effects:top_left_anchor"}]
tag @s remove ignore

=======
>>>>>>> parent of c4cb2031 (Ult effects)
# Makes sure the player can't move their skip item, or drop it
execute unless score eventRoll= tiles matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{skip:1b}},Slot:8b}]}] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={skip:1b}]
execute unless score eventRoll= tiles matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{skip:1b}},Slot:8b}]}] run function board:dice_roll/give/skip
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{skip:1b}},count:1}}]

# If the player right clicks with the skip carrot on a stick, then it runs the skip function
execute unless score eventRoll= tiles matches 1.. if score @s rightClick matches 1.. run function board:dice_roll/skip

# Runs the function to stop players backtracking
execute unless score spikeball= tiles matches 1.. run function board:dice_roll/prevent/back_prevention

# Handles the invisible timer 
    # Increments by 1 every tick
execute unless score eventRoll= tiles matches 1.. run scoreboard players add @s diceTimer 1
    # If the score is the same as the timermax= score
execute if score @s diceTimer = timermax= dice run function board:dice_roll/skip

# Runs the speed function so that the players speed can increase depending on how long they run for
function board:dice_roll/speed

# Runs if the volcano hasnt erupted
execute unless score errupted= tiles matches 1 unless score spikeball= tiles matches 1.. run function board:dice_roll/tiles_normal
# Runs if the volcano is currently erupted
execute if score errupted= tiles matches 1 unless score spikeball= tiles matches 1.. run function board:dice_roll/tiles_volcano

# Volcano
execute as @a[x=-686,y=63,z=-685,dx=10,dy=4,dz=2,scores={newBoardPos=101}] run function board:dice_roll/end_go
execute positioned -680 64 -687 if entity @s[distance=..3,scores={newBoardPos=102}] run function board:dice_roll/end_go
execute positioned -676 64 -689 if entity @s[distance=..3,scores={newBoardPos=103}] run function board:dice_roll/end_go
execute positioned -670 64 -693 if entity @s[distance=..3,scores={newBoardPos=104}] run function board:dice_roll/end_go
execute if entity @s[x=-659,y=66,z=-683,dx=-2,dy=4,dz=-10,scores={newBoardPos=105}] run function board:dice_roll/end_go
execute positioned -653 66 -682 if entity @s[distance=..3,scores={newBoardPos=106}] run function board:tiles/shout_space/start
execute if entity @s[x=-653,y=65,z=-672,dx=10,dy=4,dz=2,scores={newBoardPos=107}] run function board:dice_roll/end_go
execute positioned -657 65 -664 if entity @s[distance=..3,scores={newBoardPos=108}] run function board:dice_roll/end_go
execute positioned -663 66 -664 if entity @s[distance=..3,scores={newBoardPos=109}] run function board:dice_roll/end_go
execute positioned -667 66 -667 if entity @s[distance=..3,scores={newBoardPos=110..}] run function board:tiles/shout_space/start