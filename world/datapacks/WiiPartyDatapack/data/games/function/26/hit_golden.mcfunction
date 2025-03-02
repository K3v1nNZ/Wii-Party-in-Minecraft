#   Author        =   @ JevinLevin
#   Description   =   Ran as a player when they hit a gold mole
#   Called By     =   advancements/games/26/hit_golden


# Removes the advancement used to trigger this function so they can trigger it again
advancement revoke @s only games:26/hit_golden

# Increases player total points by 3, since it is a golden one
scoreboard players add @s 26points 3

# Adds a temporary tag to the player for later
tag @s add tempHit

# Updates the scoreboard
function games:26/display

# Runs a generic hit function to reduce repeated code
function games:26/hit_generic

title @s title ""
title @s[team=blue] subtitle {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"text":"+3","bold":true,"type":"text"}],"source":"storage","type":"nbt"}
title @s[team=red] subtitle {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"text":"+3","bold":true,"type":"text"}],"source":"storage","type":"nbt"}
title @s[team=green] subtitle {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"text":"+3","bold":true,"type":"text"}],"source":"storage","type":"nbt"}
title @s[team=orange] subtitle {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"text":"+3","bold":true,"type":"text"}],"source":"storage","type":"nbt"}