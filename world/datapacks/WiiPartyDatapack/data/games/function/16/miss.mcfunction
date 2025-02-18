# Plays block sound to signify that the bullet has hit the wrong side
playsound minecraft:item.shield.block master @a ~ ~ ~ 3 1.2


# Displays angry villager particles at the bullet
particle minecraft:angry_villager ~ ~ ~ 0.8 0.8 0.8 0.1 5 force

# Calculate motion vector
execute positioned 0.0 0 0.0 rotated ~ 0 run summon marker ^ ^ ^-1 {Tags:["direction"]}
execute store result score $x player_motion.api.launch run data get entity @e[type=marker,tag=direction,limit=1] Pos[0] 3000
scoreboard players set $y player_motion.api.launch 2500
execute store result score $z player_motion.api.launch run data get entity @e[type=marker,tag=direction,limit=1] Pos[2] 3000
kill @e[tag=direction]

function player_motion:api/launch_xyz