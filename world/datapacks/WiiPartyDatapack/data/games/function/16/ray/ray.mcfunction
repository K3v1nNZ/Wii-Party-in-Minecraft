#Check if an entity was detected.

execute if score #hit 16scores matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=player,tag=ingame,tag=!16dead,tag=!16ignore,dx=0,sort=nearest] run function games:16/ray/check_hit_entity
scoreboard players add #distance 16scores 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit 16scores matches 0 if score #distance 16scores matches ..80 positioned ^ ^ ^0.05 run function games:16/ray/ray