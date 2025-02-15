#   Author        =   @ JevinLevin
#   Description   =   Main tick function for the minigame
#   Called By     =   games:repeat

scoreboard players add slowtick= 26scores 1
execute if score slowtick= 26scores matches 2 run scoreboard players set slowtick= 26scores 0

# Runs function as all mole armor stands to reduce @e
execute as @e[type=minecraft:armor_stand,tag=mole] at @s run function games:26/mole_stand

# Runs a function as all moles every tick to reduce the use of @e
execute as @e[type=minecraft:slime,tag=mole] at @s run function games:26/main_mole

# Removes 1 from the global timer every tick
execute if score ingame= 26scores matches 2 run scoreboard players remove timer= 26scores 1

# Once the timer reaches 0, end the game
execute if score ingame= 26scores matches 2 if score timer= 26scores matches 0 run function games:26/end_game

# Stores the global timer into the bossbar
execute store result bossbar 26blue value run scoreboard players get timer= 26scores
execute store result bossbar 26red value run scoreboard players get timer= 26scores
execute store result bossbar 26green value run scoreboard players get timer= 26scores
execute store result bossbar 26orange value run scoreboard players get timer= 26scores

# Stops player from dropping hammer
#execute as @e[type=minecraft:item,tag=!processed,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{hammer:1b}},count:1}}] run data modify entity @s Owner set from entity @s Thrower
#execute as @e[type=minecraft:item,tag=!processed,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{hammer:1b}},count:1}}] run data modify entity @s PickupDelay set value 0
#tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{hammer:1b}},count:1}}] add processed
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{hammer:1b}},count:1}}]

# Runs the player function as all ingame players
execute as @a[tag=ingame] at @s run function games:26/player

# Kills as boats that dont have a passenger
execute as @e[type=minecraft:boat,tag=26knocked] unless data entity @s Passengers run kill @s

# Runs the text_move function as all point display armor stands
execute as @e[type=minecraft:text_display,tag=points] at @s run function games:26/text_move

# Runs the slime_push function as all slimes that are used to push players away from knocked players
#execute as @e[type=slime,tag=push] at @s run function games:26/slime_push

# Runs the hole_roof function at every hole, used to make sure players cant jump ontop of a hole
execute at @e[type=minecraft:area_effect_cloud,tag=hole] run function games:26/hole_roof

# Handles the tutorial
#execute if score ingame= 26scores matches 0 run function games:26/main_start

scoreboard players add @e[type=minecraft:slime,tag=hitBlock] 26knocked 1
tp @e[type=minecraft:slime,tag=hitBlock,scores={26knocked=40..}] ~ -70 ~

function general:spectator/main