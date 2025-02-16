tag @s add 16dead
gamemode spectator @s

execute if entity @s[team=blue] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;35071],fade_colors:[I;10601471],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=red] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16727357],fade_colors:[I;16750230],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=green] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;5439331],fade_colors:[I;9568164],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=orange] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16760412],fade_colors:[I;16769195],has_trail:1b,has_twinkle:1b}]}},count:1}}

# execute on attacker run tag @s add 16shooter

execute as @s[team=blue] run tag @a[tag=16hitBlue] add 16shooter
execute as @s[team=red] run tag @a[tag=16hitRed] add 16shooter
execute as @s[team=green] run tag @a[tag=16hitGreen] add 16shooter
execute as @s[team=orange] run tag @a[tag=16hitOrange] add 16shooter


# Randomiser, used to generate a random minigame themed death message
    # Stores the result of a loot table in the random= score which chooses the death message
execute store result score random= 16scores run random value 1..8
    # If the random= score is a specific number, it chooses a specific death message
tag @s add this

execute if score random= 16scores matches 1 run tellraw @a[tag=playing,tag=!16shooter,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch1","with":[{"selector":"@s","type":"selector"},{"selector":"@a[tag=16shooter]","type":"selector"}]}],"source":"storage","type":"nbt"}

execute if score random= 16scores matches 1 run tellraw @a[tag=playing,tag=16shooter,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch1","with":[{"selector":"@s","type":"selector"},{"selector":"@a[tag=16shooter]","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 1 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch1","with":[{"selector":"@s","bold":true,"type":"selector"},{"selector":"@a[tag=16shooter]","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

execute if score random= 16scores matches 2 run tellraw @a[tag=playing,tag=!16shooter,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch2","with":[{"selector":"@s","type":"selector"},{"selector":"@a[tag=16shooter]","type":"selector"}]}],"source":"storage","type":"nbt"}

execute if score random= 16scores matches 2 run tellraw @a[tag=playing,tag=16shooter,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch2","with":[{"selector":"@s","bold":false,"type":"selector"},{"selector":"@a[tag=16shooter]","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 2 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch2","with":[{"selector":"@s","bold":true,"type":"selector"},{"selector":"@a[tag=16shooter]","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

execute if score random= 16scores matches 3 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch3","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 4 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch4","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 5 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch5","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 6 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch6","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 7 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch7","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 8 run tellraw @a[tag=playing,tag=!this] {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch8","with":[{"selector":"@s","bold":false,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

execute if score random= 16scores matches 3 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch3","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 4 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch4","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 5 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch5","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 6 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch6","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 7 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch7","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}
execute if score random= 16scores matches 8 run tellraw @s {"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"deathMessages.TropicalPunch8","with":[{"selector":"@s","bold":true,"type":"selector"}],"bold":false}],"source":"storage","type":"nbt"}

tag @a remove this
tag @a remove 16shooter

# Stores the number of players who arent dead in the left= score. Used to determine what position tag to give the player
execute store result score left= 16scores if entity @a[tag=ingame,tag=!16dead]
    # If there is no other players left, they are 1st
execute if score left= 16scores matches 0 run tag @s add 1st
    # If there is one other player left, they are 2nd
execute if score left= 16scores matches 1 run tag @s add 2nd
    # If there are 2 other players left, they are 3rd
execute if score left= 16scores matches 2 run tag @s add 3rd
    # If there are 3 other players left, they are 4th
execute if score left= 16scores matches 3 run tag @s add 4th

function games:16/display