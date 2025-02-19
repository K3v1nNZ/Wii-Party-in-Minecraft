# Ride minecart
execute if score ingame= 4scores matches 1..2 as @a[tag=ingame,team=blue] run ride @s mount @e[type=item_display,tag=4cart,tag=blue,limit=1]
execute if score ingame= 4scores matches 1..2 as @a[tag=ingame,team=red] run ride @s mount @e[type=item_display,tag=4cart,tag=red,limit=1]
execute if score ingame= 4scores matches 1..2 as @a[tag=ingame,team=green] run ride @s mount @e[type=item_display,tag=4cart,tag=green,limit=1]
execute if score ingame= 4scores matches 1..2 as @a[tag=ingame,team=orange] run ride @s mount @e[type=item_display,tag=4cart,tag=orange,limit=1]

# Shoot
execute as @a[tag=ingame,scores={4shootCooldown=1},tag=!4dead,tag=!4hit] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 2
effect give @a[tag=ingame,scores={4shootCooldown=18}] haste infinite 255 true
effect clear @a[tag=ingame,scores={4shootCooldown=1}] haste 
# Shoot cooldown xp
execute as @a[tag=ingame] unless score @s 4shootCooldown matches 1.. run function games:4/xp_reset
execute if score ingame= 4scores matches 2 as @a[tag=ingame] if score @s 4shootCooldown matches 1.. run function games:4/xp_set
#
scoreboard players remove @a[tag=ingame,scores={4shootCooldown=1..}] 4shootCooldown 1
# execute if score ingame= 4scores matches 2 as @a[tag=ingame,scores={rightClick=1..}] unless score @s 4shootCooldown matches 1.. at @s run function games:4/shoot
execute as @e[type=minecraft:block_display,tag=4shot] at @s run function games:4/move_bullet
scoreboard players remove @a[tag=ingame,scores={4tempImmune=1..}] 4tempImmune 1

# Move carts
execute if score ingame= 4scores matches 2 as @e[type=item_display,tag=4cart] at @s run function games:4/move_cart


execute if score ingame= 4scores matches 2 as @a[tag=ingame,tag=!4dead,tag=!4hit] at @s run function games:4/check_input
scoreboard players remove @a[scores={4turnCooldown=1..}] 4turnCooldown 1
scoreboard players remove @a[scores={4inputCooldown=1..}] 4inputCooldown 1

execute as @a[tag=ingame] run function games:4/direction_title

# Check for collisions
execute if score ingame= 4scores matches 2 as @a[tag=ingame,tag=!4dead,tag=!4hit] at @s run function games:4/check_collide
execute as @a[tag=ingame,tag=4collide] at @s run function games:4/collide
# For colliding in same dir
execute as @a[tag=ingame,tag=4collideBoth] at @s run function games:4/collide_both
# Prevent multiple collisions in a tick
tag @a remove 4collide
tag @a remove 4collideBoth

# Check to turn
execute if score ingame= 4scores matches 2 as @a[tag=ingame,tag=!4dead,tag=!4hit] at @s run function games:4/check_turn

# Check powerup
execute if score ingame= 4scores matches 2 as @a[tag=ingame,tag=!4dead,tag=!4hit] at @s if entity @e[type=minecraft:armor_stand,distance=...5,tag=4powerup] run function games:4/powerup_start
scoreboard players remove @a[scores={4powerup=0..}] 4powerup 1
execute as @a[scores={4powerup=0}] at @s run function games:4/powerup_end

# Displays end rod particles at all the powerups
scoreboard players add particle= 4scores 1
execute if score particle= 4scores matches 3.. run scoreboard players set particle= 4scores 0
execute if score particle= 4scores matches 0 at @e[type=minecraft:armor_stand,tag=4powerup] run particle minecraft:end_rod ~ ~1 ~ 0.3 0.3 0.3 0.001 1 force


# Dying animation
execute as @a[tag=ingame,tag=4hit] at @s run function games:4/dying

# Runs the function that changes the bossbar to show how much time is left
function games:4/bossbar

# Handles the hidden carrot on a stick in the players offhand
    # If the player removes the carrot on a stick from their offhand, it clears it so they cant put it anywhere else
execute if score ingame= 4scores matches 1..2 as @a[tag=ingame] unless predicate games:4coas run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={4shoot:1b}]
    # If the player has no carrot on a stick then it gives a new one in their offhand
execute if score ingame= 4scores matches 1..2 as @a[tag=ingame] unless predicate games:4coas run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"text":"","type":"text"}',minecraft:custom_data={4shoot:1b}]
    # Kills all carrot on a stick items with the shoot:1b tag
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{4shoot:1b}}}}]


# Increments the time= score by 1 every tick. Used to check how long the game has been running for
execute if score ingame= 4scores matches 2 run scoreboard players add time= 4scores 1
# Once the time= scores reaches 3600 ticks (180 seconds) it runs the end_game function
execute if score ingame= 4scores matches 2 if score time= 4scores matches 3600.. run function games:4/end_game

# Stores the number of players who are alive in the alive= score
execute store result score alive= 4scores if entity @a[tag=ingame,tag=!4dead]
# If the alive score is 1, that means all the players except 1 are dead, so it runs the end_game function
execute if score ingame= 4scores matches 2 if score alive= 4scores matches 1 run function games:4/end_game