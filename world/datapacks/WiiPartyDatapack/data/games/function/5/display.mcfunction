#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar display while the fireworks are going up.
#   Called By     =   

# Updates the scoreboard
scoreboard objectives add 5display dummy
scoreboard objectives setdisplay sidebar 5display
scoreboard players reset * 5display
scoreboard objectives modify 5display displayname {"translate": "game.LuckyLaunchName","bold":true}

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,team=blue] run scoreboard players set §l 5display 12
team join t.Red §l§l
execute as @a[tag=ingame,team=red] run scoreboard players set §l§l 5display 9
team join t.Green §l§l§l
execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l 5display 6
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l 5display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 5display 13
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r 5display 10
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r 5display 7
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r 5display 4
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r 5display 1

execute as @a[tag=ingame,team=blue] run scoreboard players set §0§0§0§0§0§0§0§0§0§0§0 5display 11
execute as @a[tag=ingame,team=red] run scoreboard players set §0§0§0§0§0§0§0§0 5display 8
execute as @a[tag=ingame,team=green] run scoreboard players set §0§0§0§0§0 5display 5
execute as @a[tag=ingame,team=orange] run scoreboard players set §0§0 5display 2



# Displays specific symbols that represent if the player is dead or alive depending on if they have the 4dead tag
    # Blue team
execute as @a[tag=ingame,team=blue] if score ingame= 5scores matches 1 run team modify displayline11 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if entity @e[type=minecraft:slime,tag=firework,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=blue] unless score ingame= 5scores matches 1 unless entity @e[type=minecraft:slime,tag=firework,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"#0088ff"}]}
    # Red team
execute as @a[tag=ingame,team=red] if score ingame= 5scores matches 1 run team modify displayline8 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=red] if entity @e[type=minecraft:slime,tag=firework,team=red] run team modify displayline8 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=red] unless score ingame= 5scores matches 1 unless entity @e[type=minecraft:slime,tag=firework,team=red] run team modify displayline8 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"red"}]}
    # Green team
execute as @a[tag=ingame,team=green] if score ingame= 5scores matches 1 run team modify displayline5 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=green] if entity @e[type=minecraft:slime,tag=firework,team=green] run team modify displayline5 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=green] unless score ingame= 5scores matches 1 unless entity @e[type=minecraft:slime,tag=firework,team=green] run team modify displayline5 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"green"}]}
    # Orange team
execute as @a[tag=ingame,team=orange] if score ingame= 5scores matches 1 run team modify displayline2 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if entity @e[type=minecraft:slime,tag=firework,team=green] run team modify displayline2 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=orange] unless score ingame= 5scores matches 1 unless entity @e[type=minecraft:slime,tag=firework,team=green] run team modify displayline2 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gold"}]}