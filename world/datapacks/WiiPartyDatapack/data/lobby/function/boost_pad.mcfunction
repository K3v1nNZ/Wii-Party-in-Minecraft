# Calculate motion vector
execute positioned 0.0 0 0.0 rotated ~ 0 run summon marker ^ ^ ^1 {Tags:["direction"]}
execute store result score $x player_motion.api.launch run data get entity @e[type=marker,tag=direction,limit=1] Pos[0] 60000
scoreboard players set $y player_motion.api.launch 7500
execute store result score $z player_motion.api.launch run data get entity @e[type=marker,tag=direction,limit=1] Pos[2] 60000
kill @e[tag=direction]

function player_motion:api/launch_xyz

scoreboard players set @s lobbyBoostDelay 10

particle poof ~ ~.5 ~ 0.25 0.25 0.25 0.66 10 force
playsound entity.generic.explode master @s ~ ~ ~ 10 1.5