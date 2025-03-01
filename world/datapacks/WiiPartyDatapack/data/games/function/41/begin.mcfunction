# Clears the subtitle incase one is already being displayed
title @a[tag=ingame] title " "

# Displays Start! for all players, the colour dependant on their team
title @a[team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] subtitle {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Go","bold":true}],"source":"storage","type":"nbt"}

# Ping sound effect for all players
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2
execute as @a[tag=playing] at @s run playsound ouo:start master @s ~ ~ ~ 3 1

# Sets the ingame score to 2, this signifies that the game has actually started
scoreboard players set ingame= 41scores 2


title @a[tag=playing] times 0 60 20

function games:41/play_song

scoreboard players set timer= 41scores 0

execute as @a[tag=ingame] run attribute @s generic.jump_strength base set 3
execute as @a[tag=ingame] run attribute @s generic.gravity base set 50

# Reset the scores 1 tick after start due to is_on_ground returning true for the first run of repeating if the player jumps in the countdown
schedule function games:41/reset_scores 1t

scoreboard players set @a[tag=ingame] 41jump 0
scoreboard players set @a[tag=ingame] 41prev 0