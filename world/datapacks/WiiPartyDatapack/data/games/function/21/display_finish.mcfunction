execute as @a[tag=playing] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1.5
title @a[tag=playing] times 5 20 10
title @a[tag=playing] subtitle ""
execute as @a[tag=ingame,tag=21cur,team=blue] run title @a[tag=playing] title {"color":"#0088ff","bold":true,"score":{"name": "@s","objective":"21score"}}
execute as @a[tag=ingame,tag=21cur,team=red] run title @a[tag=playing] title {"color":"red","bold":true,"score":{"name": "@s","objective":"21score"}}
execute as @a[tag=ingame,tag=21cur,team=green] run title @a[tag=playing] title {"color":"green","bold":true,"score":{"name": "@s","objective":"21score"}}
execute as @a[tag=ingame,tag=21cur,team=orange] run title @a[tag=playing] title {"color":"gold","bold":true,"score":{"name": "@s","objective":"21score"}}


schedule function games:21/display_new 2s