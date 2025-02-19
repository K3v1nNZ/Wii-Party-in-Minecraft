# Sets all players title time back to the default
title @a[tag=playing] times 20 60 20

# Clears the subtitle incase one is already being displayed
title @a[tag=playing] subtitle " "

# Displays FINISH! for all players, the colour dependant on their team
title @a[tag=ingame,team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] title {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}

# Ping sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound ouo:finish master @s ~ ~ ~ 1 1

# Schedules the end function for 5 seconds, this function will reset the minigame and take playes back to the island
schedule function games:35/end 5s

# Schedules the fade to black function to happen just before the end to give the true effect
schedule function general:fade/main 88t

# Sets scores
# Sets the ingame score to 0 to signify that the game has ended
scoreboard players set ingame= 35scores 0

function games:35/give_score

# Runs the function that shows where the players placed
function general:placements

schedule clear games:35/play_song
stopsound @a[tag=playing] voice

tag @a remove 35move
scoreboard players set travel= 35scores 0
schedule clear games:35/travel_end

# data remove storage game35 steps.blue[-1]
# data remove storage game35 steps.red[-1]
# data remove storage game35 steps.green[-1]
# data remove storage game35 steps.orange[-1]

execute if entity @a[tag=ingame,team=blue] run tellraw @a[tag=playing] [{"bold":false,"selector":"@a[tag=ingame,team=blue]"},{"color":"gray","text":": "},{"color":"gray","nbt":"steps.blue","interpret":true,"storage":"game35","separator": " > "}]
execute if entity @a[tag=ingame,team=red] run tellraw @a[tag=playing] [{"bold":false,"selector":"@a[tag=ingame,team=red]"},{"color":"gray","text":": "},{"color":"gray","nbt":"steps.red","interpret":true,"storage":"game35","separator": " > "}]
execute if entity @a[tag=ingame,team=green] run tellraw @a[tag=playing] [{"bold":false,"selector":"@a[tag=ingame,team=green]"},{"color":"gray","text":": "},{"color":"gray","nbt":"steps.green","interpret":true,"storage":"game35","separator": " > "}]
execute if entity @a[tag=ingame,team=orange] run tellraw @a[tag=playing] [{"bold":false,"selector":"@a[tag=ingame,team=orange]"},{"color":"gray","text":": "},{"color":"gray","nbt":"steps.orange","interpret":true,"storage":"game35","separator": " > "}]

# Step progress tellraw
