tag @e remove game38
execute if score entity= 38mods matches 2 positioned 38000 15 38000 run tag @e[type=minecraft:cat,distance=..100,sort=random,limit=1] add game38
execute if score entity= 38mods matches 1 positioned 38000 15 38000 run tag @e[type=minecraft:wolf,distance=..100,sort=random,limit=1] add game38
execute if score entity= 38mods matches 3 positioned 38000 15 38000 run tag @e[type=minecraft:fox,distance=..100,sort=random,limit=1,nbt={Type:"snow"}] add game38
execute if score entity= 38mods matches 3 positioned 38000 15 38000 run tag @e[type=minecraft:fox,distance=..100,sort=random,limit=1,nbt={Type:"snow"}] add 38id

#execute if score entity= 38mods matches 2 positioned 38000 15 38000 run tp @e[type=minecraft:cat,distance=..100,tag=!game38] ~ -1000 ~
#execute if score entity= 38mods matches 1 positioned 38000 15 38000 run tp @e[type=minecraft:wolf,distance=..100,tag=!game38] ~ -1000 ~
#execute if score entity= 38mods matches 3 positioned 38000 15 38000 run tp @e[type=minecraft:fox,distance=..100,tag=!game38] ~ -1000 ~

# Force fox to be white for aesthetics
# execute if score entity= 38mods matches 3 positioned 38000 15 38000 run data modify entity @e[type=minecraft:fox,distance=..100,tag=game38,limit=1] Type set value "snow"

execute positioned 38000 15 38000 run tp @e[type=minecraft:cat,distance=..100,tag=!game38,sort=random,limit=7] ~ -1000 ~
execute positioned 38000 15 38000 run tp @e[type=minecraft:fox,distance=..100,tag=!game38,sort=random,limit=4] ~ -1000 ~

execute positioned 38000 15 38000 run effect clear @e[type=minecraft:cat,distance=..100] minecraft:invisibility
execute positioned 38000 15 38000 run effect clear @e[type=minecraft:wolf,distance=..100] minecraft:invisibility
execute positioned 38000 15 38000 run effect clear @e[type=minecraft:fox,distance=..100] minecraft:invisibility