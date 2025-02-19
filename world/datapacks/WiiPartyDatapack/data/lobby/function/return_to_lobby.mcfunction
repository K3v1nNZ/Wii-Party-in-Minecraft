# execute if score wasFinal= lobby matches 1 run function lobby:play_victory
# execute unless score wasFinal= lobby matches 1 as @a at @s run function lobby:play_menu
scoreboard players reset wasFinal= lobby
execute as @a at @s run function lobby:play_menu

execute if score playing= lobby matches 2 as @a run spreadplayers -584 557 3 3 under 13 false @s
execute if score playing= lobby matches 2 as @a at @s run tp @s ~ ~ ~ 90 0
execute unless score playing= lobby matches 2 as @a run function lobby:teleport

scoreboard players set playing= lobby 0
scoreboard players reset global minigame

tag @a remove ingame
tag @a remove playing
tag @a remove 1st
tag @a remove 2nd
tag @a remove 3rd
tag @a remove 4th
tag @a remove solo
tag @a remove player1
tag @a remove player2

schedule clear board:draw/startstart
schedule clear lobby:return_to_lobby
schedule clear general:fade/main

gamemode adventure @a

effect clear @a night_vision

execute as @a run trigger endGame set 0

clear @a

function lobby:display
scoreboard objectives setdisplay sidebar lobbyDisplay

schedule function graphing:set_key 10t

execute as @a run attribute @s player.entity_interaction_range base set 3.0