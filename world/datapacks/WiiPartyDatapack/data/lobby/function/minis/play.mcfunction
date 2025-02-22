tag @a add playing
tag @a[team=blue] add ingame
tag @a[team=red] add ingame
tag @a[team=green] add ingame
tag @a[team=orange] add ingame

gamemode adventure @a[tag=ingame]
gamemode spectator @a[tag=playing,tag=!ingame]

tag @a remove islandVisit
scoreboard players set @a islandReturn 0
title @a actionbar ""

stopsound @a voice

execute if score minigame= lobby matches 1 run function games:1/start
execute if score minigame= lobby matches 2 run function games:2/start
execute if score minigame= lobby matches 3 run function games:3/start
execute if score minigame= lobby matches 4 run function games:4/start
execute if score minigame= lobby matches 5 run function games:5/start
execute if score minigame= lobby matches 6 run function games:6/start
execute if score minigame= lobby matches 7 run function games:8/start
execute if score minigame= lobby matches 8 run function games:10/start
execute if score minigame= lobby matches 9 run function games:13/start
execute if score minigame= lobby matches 10 run function games:18/start
execute if score minigame= lobby matches 11 run function games:22/start
execute if score minigame= lobby matches 12 run function games:23/start
execute if score minigame= lobby matches 13 run function games:26/start
execute if score minigame= lobby matches 14 run function games:28/start
execute if score minigame= lobby matches 15 run function games:36/start
execute if score minigame= lobby matches 16 run function games:38/start
execute if score minigame= lobby matches 17 run function games:24/start
execute if score minigame= lobby matches 18 run function games:48/start
execute if score minigame= lobby matches 19 run function games:27/start
execute if score minigame= lobby matches 20 run function games:12/start
execute if score minigame= lobby matches 21 run function games:16/start
execute if score minigame= lobby matches 22 run function games:35/start
execute if score minigame= lobby matches 23 run function games:19/start

scoreboard players set playing= lobby 2

schedule clear lobby:play_menu

tellraw @a[tag=playing] {"translate":"lobby.EndGame.Info","color":"light_purple","with":[{"translate":"command.endGame","bold":true}]}