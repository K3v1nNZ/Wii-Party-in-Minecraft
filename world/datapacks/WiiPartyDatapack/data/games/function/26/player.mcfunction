#   Author        =   @ JevinLevin
#   Description   =   Runs commands as all the players ingame. No real reason for this other than small optimisations and organisation
#   Called By     =   games:26/repeating


# If the player takes damage, and they arent recovering, then it means they must have been punched by another player so it runs the hit_player function
execute if score ingame= 26scores matches 2 if entity @s[tag=!recover,scores={26hit=0..}] run function games:26/hit_player
# Resets their damage score after
scoreboard players reset @s 26hit

# Runs the knocked function every tick if the player is knocked
execute if entity @s[scores={26knocked=1..}] run function games:26/knocked

# Runs the recover function every tick if the player is recovering
execute if entity @s[tag=recover] run function games:26/recover

# If the player isnt holding their hammer in their mainhand or offhand then it runs the new_hammer function
execute if score ingame= 26scores matches 1.. unless score @s 26dropHammer matches 0.. unless predicate games:26hammer run function games:26/new_hammer
execute unless score ingame= 26scores matches 1.. if score end= 26scores matches 1 unless score @s 26dropHammer matches 0.. unless predicate games:26hammer run function games:26/new_hammer
scoreboard players reset @s 26dropHammer

# Give the player haste and weakness if they arent currently doing the hit animation
execute if score ingame= 26scores matches 2 run effect give @s[scores={26aniCooldown=1}] haste infinite 125 true
execute if score ingame= 26scores matches 2 run effect give @s[scores={26aniCooldown=1}] weakness infinite 255 true

execute if score ingame= 26scores matches 2 run effect clear @s[scores={26hitCooldown=0}] haste
execute if score ingame= 26scores matches 2 run effect clear @s[scores={26hitCooldown=0}] weakness

# Removes 1 from both hit cooldowns
scoreboard players remove @s[scores={26hitCooldown=1..}] 26hitCooldown 1
scoreboard players remove @s[scores={26aniCooldown=1..}] 26aniCooldown 1

# SET XP
execute as @a[tag=ingame] unless score @s 26hitCooldown matches 1.. run function games:26/xp_reset
execute as @a[tag=ingame] if score @s 26hitCooldown matches 1.. run function games:26/xp_set
#

# Runs the cooldown_title function if the player is on cooldown curently
# execute if score ingame= 26scores matches 2 as @s[scores={26hitCooldown=1..}] run function games:26/cooldown_title