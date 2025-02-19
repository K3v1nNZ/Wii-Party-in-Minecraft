tag @s remove 16charging
tag @s remove 16charged
scoreboard players reset @s 16charge

playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~ 3 1

# clear @s
# function games:16/punch_replace

# Check if hitting player from front
scoreboard players set maxDelta= 16scores 100
scoreboard players operation halfDelta= 16scores = maxDelta= 16scores
scoreboard players operation halfDelta= 16scores /= 2 Numbers

scoreboard players set hit= 16scores 0
execute if score hit= 16scores matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~ 0 positioned ^ ^ ^-0.1 positioned ~ ~-0.5 ~ run function games:16/check_hit
execute if score hit= 16scores matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~4 0 positioned ^ ^ ^-0.1 positioned ~ ~-0.5 ~ run function games:16/check_hit
execute if score hit= 16scores matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~-4 0 positioned ^ ^ ^-0.1 positioned ~ ~-0.5 ~ run function games:16/check_hit
execute if score hit= 16scores matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~ 0 positioned ^.15 ^ ^-0.1 positioned ~ ~-0.5 ~ run function games:16/check_hit
execute if score hit= 16scores matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~ 0 positioned ^-.15 ^ ^-0.1 positioned ~ ~-0.5 ~ run function games:16/check_hit
execute if score hit= 16scores matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~ 0 positioned ^.33 ^ ^-0.1 positioned ~ ~-0.5 ~ run function games:16/check_hit
execute if score hit= 16scores matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~ 0 positioned ^-.33 ^ ^-0.1 positioned ~ ~-0.5 ~ run function games:16/check_hit


scoreboard players set @s 16cooldown 5

attribute @s generic.attack_speed base set 0.125
scoreboard players set @s 16punchtimer 2

function games:16/interaction_small