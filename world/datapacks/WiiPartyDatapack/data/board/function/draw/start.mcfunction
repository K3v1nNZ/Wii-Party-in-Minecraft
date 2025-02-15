$scoreboard players operation count= draw = $(place)= draw

$tag @a[tag=$(place)] add drawRoll

#$tellraw @a[tag=playing] [{"text":"Multiple players ended with $(place) place!\nPlayers ","color":"gray"},{"selector":"@a[tag=drawRoll]"},{"text":" will now to decide their new positions."}]

$tellraw @a[tag=playing] [{"translate":"board.Draw.Start.1","color":"gray","with":[{"translate":"generic.$(place)"}]}]
tellraw @a[tag=playing] [{"translate":"board.Draw.Start.2","color":"gray","with":[{"selector":"@a[tag=drawRoll]"}]}]

execute as @a[tag=playing] at @s run playsound block.note_block.pling master @s ~ ~ ~ 10000

schedule function board:draw/new_roll 1s

execute if score song= draw matches 0 as @a[tag=playing] at @s run playsound music:main_finish voice @s
execute if score song= draw matches 0 as @a[tag=playing] at @s run scoreboard players set song= draw 1