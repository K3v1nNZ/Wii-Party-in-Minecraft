scoreboard players add val= 15id 1

summon sheep ~ ~ ~ {Tags:["15sheep","15leader","15temp"],Invulnerable:1b,Silent:1b}

summon sheep ~ ~ ~ {Tags:["15sheep","15invis","15temp"],Invulnerable:1b,Silent:1b}
summon sheep ~ ~ ~ {Tags:["15sheep","15invis","15temp"],Invulnerable:1b,Silent:1b}
summon sheep ~ ~ ~ {Tags:["15sheep","15invis","15temp"],Invulnerable:1b,Silent:1b}
effect give @e[type=sheep,tag=15invis] invisibility infinite 1 true


execute as @e[type=sheep,tag=15temp] run scoreboard players operation @s 15id = val= 15id
team join 15sheep @e[type=sheep,tag=15temp]
tag @e remove 15temp

