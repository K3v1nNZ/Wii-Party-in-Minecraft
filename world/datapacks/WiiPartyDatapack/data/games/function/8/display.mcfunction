#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar scoreboard. Is run at the start and whenever a player dies
#   Called By     =   games:2/start + games:2/ifhit

# Resets the scoreboard and all the scores
execute if score ingame 8scores matches 1 run scoreboard players reset * 8display

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,team=blue] run scoreboard players set §l 8display 12
team join t.Red §l§l
execute as @a[tag=ingame,team=red] run scoreboard players set §l§l 8display 9
team join t.Green §l§l§l
execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l 8display 6
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l 8display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 8display 13
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r 8display 10
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r 8display 7
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r 8display 4
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r 8display 1

execute as @a[tag=ingame,team=blue] run scoreboard players set §0§0§0§0§0§0§0§0§0§0§0 8display 11
execute as @a[tag=ingame,team=red] run scoreboard players set §0§0§0§0§0§0§0§0 8display 8
execute as @a[tag=ingame,team=green] run scoreboard players set §0§0§0§0§0 8display 5
execute as @a[tag=ingame,team=orange] run scoreboard players set §0§0 8display 2

# Displays specific symbols that represent the number of times the player has taken damage by checking their 1damage score
    # Blue team
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 0 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"0z","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 1 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"2%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 2 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"4%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 3 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"6%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 4 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"9%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 5 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"11%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 6 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"13%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 7 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"15%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 8 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"18%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 9 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"20%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 10 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"22%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 11 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"24%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 12 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"27%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 13 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"29%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 14 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"31%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 15 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"34%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 16 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"36%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 17 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"38%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 18 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"40%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 19 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"43%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 20 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"45%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 21 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"47%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 22 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"51%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 23 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"53%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 24 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"55%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 25 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"57%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 26 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"60%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 27 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"62%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 28 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"64%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 29 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"67%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 30 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"69%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 31 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"71%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 32 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"74%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 33 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"76%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 34 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"78%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 35 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"81%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 36 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"83%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 37 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"85%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 38 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"87%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 39 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"89%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 40 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"91%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 41 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"94%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 42 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"96%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 43 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"98%","color":"#0088ff"}]}
execute as @a[tag=ingame,team=blue] if score @s 8hits matches 44 run team modify displayline11 prefix {"translate":"scoreboard.ChopChops.3","with":[{"text":"100%","color":"#0088ff"}]}
    # Red team
execute as @a[tag=ingame,team=red] if score @s 8hits matches 0 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"0%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 1 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"2%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 2 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"4%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 3 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"6%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 4 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"9%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 5 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"11%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 6 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"13%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 7 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"15%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 8 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"18%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 9 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"20%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 10 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"22%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 11 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"24%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 12 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"27%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 13 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"29%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 14 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"31%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 15 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"34%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 16 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"36%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 17 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"38%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 18 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"40%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 19 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"43%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 20 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"45%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 21 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"47%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 22 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"51%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 23 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"53%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 24 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"55%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 25 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"57%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 26 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"60%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 27 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"62%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 28 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"64%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 29 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"67%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 30 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"69%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 31 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"71%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 32 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"74%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 33 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"76%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 34 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"78%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 35 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"81%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 36 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"83%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 37 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"85%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 38 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"87%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 39 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"89%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 40 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"91%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 41 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"94%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 42 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"96%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 43 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"98%","color":"red"}]}
execute as @a[tag=ingame,team=red] if score @s 8hits matches 44 run team modify displayline8 prefix {"translate":"scoreboard.ChopChops.3","with":[{"text":"100%","color":"red"}]}
    # Green team
execute as @a[tag=ingame,team=green] if score @s 8hits matches 0 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"0%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 1 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"2%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 2 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"4%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 3 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"6%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 4 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"9%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 5 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"11%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 6 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"13%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 7 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"15%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 8 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"18%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 9 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"20%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 10 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"22%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 11 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"24%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 12 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"27%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 13 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"29%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 14 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"31%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 15 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"34%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 16 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"36%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 17 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"38%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 18 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"40%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 19 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"43%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 20 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"45%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 21 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"47%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 22 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"51%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 23 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"53%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 24 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"55%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 25 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"57%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 26 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"60%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 27 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"62%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 28 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"64%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 29 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"67%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 30 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"69%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 31 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"71%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 32 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"74%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 33 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"76%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 34 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"78%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 35 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"81%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 36 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"83%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 37 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"85%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 38 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"87%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 39 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"89%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 40 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"91%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 41 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"94%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 42 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"96%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 43 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"98%","color":"green"}]}
execute as @a[tag=ingame,team=green] if score @s 8hits matches 44 run team modify displayline5 prefix {"translate":"scoreboard.ChopChops.3","with":[{"text":"100%","color":"green"}]}
    # Orange team
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 0 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"0%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 1 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"2%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 2 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"4%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 3 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"6%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 4 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.1","with":[{"text":"9%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 5 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"11%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 6 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"13%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 7 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"15%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 8 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"18%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 9 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"20%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 10 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"22%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 11 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"24%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 12 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"27%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 13 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"29%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 14 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"31%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 15 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"34%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 16 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"36%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 17 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"38%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 18 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"40%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 19 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"43%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 20 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"45%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 21 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"47%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 22 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"51%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 23 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"53%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 24 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"55%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 25 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"57%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 26 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"60%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 27 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"62%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 28 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"64%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 29 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"67%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 30 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"69%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 31 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"71%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 32 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"74%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 33 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"76%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 34 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"78%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 35 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"81%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 36 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"83%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 37 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"85%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 38 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"87%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 39 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"89%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 40 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"91%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 41 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"94%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 42 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"96%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 43 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.2","with":[{"text":"98%","color":"gold"}]}
execute as @a[tag=ingame,team=orange] if score @s 8hits matches 44 run team modify displayline2 prefix {"translate":"scoreboard.ChopChops.3","with":[{"text":"100%","color":"gold"}]}