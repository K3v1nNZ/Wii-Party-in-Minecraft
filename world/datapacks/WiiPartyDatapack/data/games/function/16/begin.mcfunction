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
scoreboard players set ingame= 16scores 2


# Enable movement
execute as @a[tag=ingame] run attribute @s minecraft:generic.movement_speed base set 0.1

title @a[tag=playing] times 0 60 20

function games:16/play_song

# Interaction entities
execute as @a[tag=ingame,team=blue] at @s anchored eyes run summon interaction ~ ~ ~ {Tags:["16interact","blue"],width:1f, response:0b,  height:1.5f}
execute as @a[tag=ingame,team=red] at @s anchored eyes run summon interaction ~ ~ ~ {Tags:["16interact","red"],width:1f, response:0b,  height:1.5f}
execute as @a[tag=ingame,team=green] at @s anchored eyes run summon interaction ~ ~ ~ {Tags:["16interact","green"],width:1f, response:0b,  height:1.5f}
execute as @a[tag=ingame,team=orange] at @s anchored eyes run summon interaction ~ ~ ~ {Tags:["16interact","orange"],width:1f, response:0b,  height:1.5f}
execute as @a[tag=ingame] run function games:16/interaction_small

team modify blue collisionRule always
team modify red collisionRule always
team modify green collisionRule always
team modify orange collisionRule always