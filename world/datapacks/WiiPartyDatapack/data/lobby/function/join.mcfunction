#say joined
stopsound @s voice

scoreboard players reset @s leave
tag @s add joined

tag @s remove inactive
tag @s remove ingame
tag @s remove turn
tag @s remove 1st
tag @s remove 2nd
tag @s remove 3rd
tag @s remove 4th
tag @s remove selectChoose
tag @s remove selectSpectate
tag @s remove drawRoll
tag @s remove drawRolled
tag @s remove drawRollNow
tag @s remove UFO1
tag @s remove UFO2
tag @s remove UFO3
tag @s remove tornado1
tag @s remove tornado2
tag @s remove tornado3
tag @s remove solo
tag @s remove player1
tag @s remove player2
tag @s remove blue
tag @s remove red
tag @s remove green
tag @s remove orange

tag @s remove lobbyParkour
tag @s remove islandVisit
title @s actionbar ""

execute unless score playing= lobby matches 1.. run gamemode adventure @s
execute unless score playing= lobby matches 1.. run tp @s -525 11 541 45 0
execute unless score playing= lobby matches 1.. run scoreboard objectives setdisplay sidebar lobbyDisplay

spawnpoint @s -525 11 541
setworldspawn -525 11 541

execute if score playing= lobby matches 1.. run gamemode spectator @s
execute if score playing= lobby matches 1.. run tp @s @a[tag=ingame,limit=1,sort=random]
execute if score playing= lobby matches 1.. run tag @s add playing

# If their gameID doesnt match current game
execute if score playing= lobby matches 1 if score @s gameID = value= gameID run tag @s add inactive
team leave @s[tag=!inactive]
execute as @s[tag=inactive] run function lobby:join_ingame

attribute @s minecraft:generic.movement_speed base set 0.1
attribute @s minecraft:generic.jump_strength base set 0.41999998688697815

execute as @s[tag=firstJoined] at @s run function lobby:play_menu

tellraw @s ""
tellraw @s ""
tellraw @s {"translate":"lobby.Music.Info","color":"light_purple"}
tellraw @s {"color":"light_purple","translate":"\\n§lTo play this map you must enable the resoucepack."}
tellraw @s {"color":"light_purple","translate":"You can find it inside the world file as §l'resources.zip'\\n\\n"}

forceload add -525 541

effect clear @s invisibility

ride @s dismount

clear @s
title @s title ""
title @s subtitle ""

difficulty easy