scoreboard players set show= 35scores 0
scoreboard players set travel= 35scores 1
clear @a[tag=ingame]

execute as @a[tag=playing] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1.25

tellraw @a[tag=playing] {"translate":"game.StrategySteps.Travel.Info","color":"gray","with":[{"selector":"@a[tag=ingame,tag=35move]","bold":true}]}

execute as @a[tag=ingame,tag=35move] run scoreboard players operation @s 35prev = @s 35step
execute as @a[tag=ingame,tag=35move] run scoreboard players operation @s 35step += @s 35num
execute as @a[tag=ingame,tag=35move] if score @s 35step matches 13.. run scoreboard players set @s 35step 12

execute as @a[tag=ingame,team=blue,tag=35move] run function games:35/add_storage {"color":"blue"}
execute as @a[tag=ingame,team=red,tag=35move] run function games:35/add_storage {"color":"red"}
execute as @a[tag=ingame,team=green,tag=35move] run function games:35/add_storage {"color":"green"}
execute as @a[tag=ingame,team=orange,tag=35move] run function games:35/add_storage {"color":"orange"}

schedule function games:35/travel_end 8s

function games:35/display