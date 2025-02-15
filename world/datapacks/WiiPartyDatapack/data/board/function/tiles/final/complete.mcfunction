scoreboard players set final= tiles 3
scoreboard players reset wintimer= tiles


title @a[tag=playing] title [{"translate":"board.Tiles.Final.Victory!","bold":true,"color":"#FF2CFF"}]
title @a[tag=playing] subtitle ""
execute as @a[tag=playing] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 0.75

schedule function board:tiles/final/fireworks/1 5t

schedule function board:tiles/final/fireworks/2 30t

schedule function board:tiles/final/fireworks/3 55t

schedule function board:tiles/final/fireworks/4 80t append
schedule function board:tiles/final/fireworks/4 85t append
schedule function board:tiles/final/fireworks/4 90t append

schedule function board:tiles/final/end 7s