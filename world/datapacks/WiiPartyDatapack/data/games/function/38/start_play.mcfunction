#   Author        =   @ T4Bl3rUs
#   Description   =   Starts the minigame
#   Called By     =   games:38/main_start

# Fade screen to black
#function general:fade/main

# Schedule next part
schedule function games:38/start_title 5s

# If the players voted on a practice round, then the practice= score is set to 1 to indicate that. This means the game will repeat again at the end
scoreboard players set practice= 38scores 0
execute if score practice= practice matches 1 run scoreboard players set practice= 38scores 1

# Resets both starting book scores
scoreboard players reset play= practice
scoreboard players reset practice= practice

# Removes the tutorial lecterns
#schedule function games:38/remove_lecterns 1s

# Remove unnecessary mobs
function games:38/rm_mobs

# Set up the camera
# function games:38/camera/setup

# Shows that the game is now beginning
scoreboard players set ingame= 38scores 1

# Clears actionbar title
title @a[tag=playing] actionbar ""

# Makes all players invisible and gives them colored boots
effect give @a[tag=ingame] minecraft:invisibility infinite 255 true

item replace entity @a[tag=ingame,team=blue] armor.feet with minecraft:leather_boots[minecraft:custom_name='{"text":" ","type":"text"}',minecraft:dyed_color={rgb:35071,show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @a[tag=ingame,team=red] armor.feet with minecraft:leather_boots[minecraft:custom_name='{"text":" ","type":"text"}',minecraft:dyed_color={rgb:16733525,show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @a[tag=ingame,team=green] armor.feet with minecraft:leather_boots[minecraft:custom_name='{"text":" ","type":"text"}',minecraft:dyed_color={rgb:5635925,show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @a[tag=ingame,team=orange] armor.feet with minecraft:leather_boots[minecraft:custom_name='{"text":" ","type":"text"}',minecraft:dyed_color={rgb:16755200,show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]

schedule function games:38/play_intro 60t