tag @s add 15finished

execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 2


scoreboard players operation s= 15timer = @s 15timer
scoreboard players operation s= 15timer /= 20 Numbers
scoreboard players operation ms= 15timer = @s 15timer
scoreboard players operation ms= 15timer %= 20 Numbers
scoreboard players operation ms= 15timer *= 5 Numbers

# Add random val to ms just to make it seem more legit
execute store result score rand= 15timer run random value 0..4
scoreboard players operation ms= 15timer += rand= 15timer

tag @s add this
execute if score ms= 15timer matches ..9 run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector"},{"color":"white","score":{"name":"s=","objective": "15timer"}},[{"text":"0","color":"white"},{"color":"white","score":{"name":"ms=","objective": "15timer"}}]],"bold":false}
execute if score ms= 15timer matches 10.. run tellraw @a[tag=playing,tag=!this] {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector"},{"color":"white","score":{"name":"s=","objective": "15timer"}},{"color":"white","score":{"name":"ms=","objective": "15timer"}}],"bold":false}
execute if score ms= 15timer matches ..9 run tellraw @s {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector","bold":true},{"color":"white","score":{"name":"s=","objective": "15timer"}},[{"text":"0","color":"white"},{"color":"white","score":{"name":"ms=","objective": "15timer"}}]],"bold":false}
execute if score ms= 15timer matches 10.. run tellraw @s {"color":"gray","translate":"game.DerbyDash.Finish","with":[{"selector":"@s","type":"selector","bold":true},{"color":"white","score":{"name":"s=","objective": "15timer"}},{"color":"white","score":{"name":"ms=","objective": "15timer"}}],"bold":false}
tag @s remove this

execute store result score players 15cores if entity @a[tag=ingame]
execute if entity @a[tag=1st] if entity @a[tag=2nd] if entity @a[tag=3rd] run tag @s add 4th
execute if entity @a[tag=1st] if entity @a[tag=2nd] unless entity @a[tag=3rd] run tag @s add 3rd
execute if entity @a[tag=1st] unless entity @a[tag=2nd] run tag @s add 2nd
execute unless entity @a[tag=1st] run tag @s add 1st


execute if entity @s[team=blue] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;35071],fade_colors:[I;10601471],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=red] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16727357],fade_colors:[I;16750230],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=green] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;5439331],fade_colors:[I;9568164],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=orange] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16760412],fade_colors:[I;16769195],has_trail:1b,has_twinkle:1b}]}},count:1}}



function games:15/display