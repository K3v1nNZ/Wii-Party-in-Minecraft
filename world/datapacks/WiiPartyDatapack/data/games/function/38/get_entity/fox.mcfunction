tag @e[type=minecraft:fox,tag=game38] add game38box
execute at @e[type=minecraft:fox,tag=game38] run summon minecraft:slime ~ ~-11.25 ~ {Size:6,NoAI:1b,Silent:1b,Tags:["game38box"],active_effects:[{id:"minecraft:invisibility",duration:1000000,show_particles:0b}]}
# scoreboard players set min= 38scores 12
scoreboard players set min= 38scores 5
execute as @e[type=minecraft:slime,tag=game38box] at @s run tp ~ ~10 ~
execute unless predicate games:38look run scoreboard players set min= 38scores 0
# execute at @s unless entity @e[type=minecraft:fox,distance=..10,tag=game38] run scoreboard players set min= 38scores 0
execute at @s unless entity @e[type=minecraft:fox,distance=..15,tag=game38] run scoreboard players set min= 38scores 0
execute as @e[type=minecraft:slime,tag=game38box] at @s run tp ~ -1000 ~
scoreboard players set hit= 38scores 0
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["game38temp"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
tp @e[type=minecraft:area_effect_cloud,tag=game38temp] @s

# Bottom front right
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^ ^.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["game38point"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^ ^.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Bottom front left
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^ ^.5 run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^ ^.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Bottom centre right
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^ ^ run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^ ^ facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Bottom centre left
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^ ^ run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^ ^ facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Bottom back right
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^ ^-.5 run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^ ^-.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Bottom back left
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^ ^-.5 run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^ ^-.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting

# Centre front right
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.3 ^.5 run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.4 ^.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Centre front left
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.3 ^.5 run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.4 ^.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Centre centre right
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.3 ^ run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.4 ^ facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Centre centre left
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.3 ^ run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.4 ^ facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Centre back right
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.3 ^-.5 run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.4 ^-.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Centre back left
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.3 ^-.5 run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.4 ^-.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting

# Top front right
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.6 ^.5 run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.8 ^.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Top front left
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.6 ^.5 run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.8 ^.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Top centre right
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.6 ^ run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.8 ^ facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Top centre left
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.6 ^ run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.8 ^ facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Top back right
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.6 ^-.5 run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^-.15 ^.8 ^-.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting
# Top back left
execute as @e[type=minecraft:fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.6 ^-.5 run tp @e[type=minecraft:area_effect_cloud,tag=game38point] @s
execute at @s anchored eyes facing entity @e[tag=game38point] feet run tp @s ~ ~ ~ ~ ~
execute if predicate games:38look run scoreboard players add hit= 38scores 1
#execute if score hit= 38scores < min= 38scores run scoreboard players set current= 38scores 0
#execute if score hit= 38scores < min= 38scores as @e[type=fox,tag=game38] at @s rotated as @s rotated ~ 0 positioned ^.15 ^.8 ^-.5 facing entity @a[tag=target] eyes run function games:38/get_entity/raycasting

execute at @s rotated as @e[type=minecraft:area_effect_cloud,tag=game38temp,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[type=minecraft:area_effect_cloud,tag=game38temp]
kill @e[type=minecraft:area_effect_cloud,tag=game38point]
execute if score min= 38scores matches 0 run scoreboard players set min= 38scores 1000