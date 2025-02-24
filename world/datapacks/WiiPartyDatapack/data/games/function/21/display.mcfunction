# Resets the scoreboard and all the scores
scoreboard players reset * 21display

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,team=blue] run scoreboard players set §l 21display 12
team join t.Red §l§l
execute as @a[tag=ingame,team=red] run scoreboard players set §l§l 21display 9
team join t.Green §l§l§l
execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l 21display 6
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l 21display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 21display 13
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r 21display 10
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r 21display 7
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r 21display 4
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r 21display 1

execute as @a[tag=ingame,team=blue] run scoreboard players set §0§0§0§0§0§0§0§0§0§0§0 21display 11
execute as @a[tag=ingame,team=red] run scoreboard players set §0§0§0§0§0§0§0§0 21display 8
execute as @a[tag=ingame,team=green] run scoreboard players set §0§0§0§0§0 21display 5
execute as @a[tag=ingame,team=orange] run scoreboard players set §0§0 21display 2


# Displays specific symbols that represent if the player is dead or alive depending on if they have the 4dead tag
    # Blue team
execute as @a[tag=ingame,tag=!4dead,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=4dead,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"#0088ff"}]}
    # Red team
execute as @a[tag=ingame,tag=!4dead,team=red] run team modify displayline8 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=4dead,team=red] run team modify displayline8 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"red"}]}
    # Green team
execute as @a[tag=ingame,tag=!4dead,team=green] run team modify displayline5 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=4dead,team=green] run team modify displayline5 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"green"}]}
    # Orange team
execute as @a[tag=ingame,tag=!4dead,team=orange] run team modify displayline2 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"gray"}]}
execute as @a[tag=ingame,tag=4dead,team=orange] run team modify displayline2 prefix {"translate":"scoreboard.BackAttack","with":[{"translate":"scoreboard.BackAttack.Symbol","color":"gold"}]}