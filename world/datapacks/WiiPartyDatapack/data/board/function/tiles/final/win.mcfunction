scoreboard players set global tiles 0
# schedule function board:tiles/dragonwall/end 2s
# schedule function board:tiles/dragonwall/stages/1 2s
# title @a[tag=playing,tag=!ingame] title [{"selector":"@a[tag=turn]","color":"light_purple"},{"text":" rolled a ","color":"light_purple"},{"score":{"name":"eventRoll=","objective":"diceRoll"},"color":"light_purple","bold":true},{"text":"!","color":"light_purple"}]
# title @a[tag=ingame,team=blue] title [{"selector":"@a[tag=turn]","color":"#0088FF"},{"text":" rolled a ","color":"#0088FF"},{"score":{"name":"eventRoll=","objective":"diceRoll"},"color":"#0088FF","bold":true},{"text":"!","color":"#0088FF"}]
# title @a[tag=ingame,team=red] title [{"selector":"@a[tag=turn]","color":"red"},{"text":" rolled a ","color":"red"},{"score":{"name":"eventRoll=","objective":"diceRoll"},"color":"red","bold":true},{"text":"!","color":"red"}]
# title @a[tag=ingame,team=green] title [{"selector":"@a[tag=turn]","color":"green"},{"text":" rolled a ","color":"green"},{"score":{"name":"eventRoll=","objective":"diceRoll"},"color":"green","bold":true},{"text":"!","color":"green"}]
# title @a[tag=ingame,team=orange] title [{"selector":"@a[tag=turn]","color":"gold"},{"text":" rolled a ","color":"gold"},{"score":{"name":"eventRoll=","objective":"diceRoll"},"color":"gold","bold":true},{"text":"!","color":"gold"}]
title @a[tag=playing,tag=!ingame] subtitle {"translate":"board.Tiles.Final.Defeat","color":"light_purple","bold":true}
title @a[tag=ingame,team=blue] subtitle {"translate":"board.Tiles.Final.Defeat","color":"#0088FF","bold":true}
title @a[tag=ingame,team=red] subtitle {"translate":"board.Tiles.Final.Defeat","color":"red","bold":true}
title @a[tag=ingame,team=green] subtitle {"translate":"board.Tiles.Final.Defeat","color":"green","bold":true}
title @a[tag=ingame,team=orange] subtitle {"translate":"board.Tiles.Final.Defeat","color":"gold","bold":true}
title @a[tag=playing] title ""
execute at @a[tag=turn] run playsound entity.wither.death master @a ~ ~ ~ 20 0.75 1
stopsound @a[tag=playing] voice

# Sets all the diceDespawn timers to the duration= score so that they both explode at the same time
scoreboard players operation @e[type=minecraft:chicken,tag=diceroll] diceDespawn = duration= diceDespawn

scoreboard players set final= tiles 2

scoreboard players set wintimer= tiles 0

scoreboard players set rolling= dice 0

scoreboard players set wasFinal= lobby 1