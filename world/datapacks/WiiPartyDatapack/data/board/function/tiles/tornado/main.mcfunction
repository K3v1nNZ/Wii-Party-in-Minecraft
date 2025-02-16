#   Author        =   @ JevinLevin
#   Description   =   Runs every tick. Checks for when the player rolls, and runs the moving animation
#   Called By     =   board:tiles/main


# Once the player has rolled, then it runs the rolled function
execute if score players= tiles matches 2 if score tornadoTotal= tiles matches 1 as @a[tag=turn] run function board:tiles/tornado/rolled
execute if score players= tiles matches 3.. if score tornadoTotal= tiles matches 2 as @a[tag=turn] run function board:tiles/tornado/rolled

# Runs the moving function every tick while the player is moving back, which runs the animations
execute if score tornado= tiles matches 2 as @a[tag=chosen] run function board:tiles/tornado/moving
# Force end if leaves
execute if score tornado= tiles matches 2 unless entity @a[tag=chosen] run function board:tiles/tornado/end

# Teleports the player back to their tile if they go out of bounds
execute if score tornado= tiles matches 1 as @a[tag=turn] at @s if block ~ ~1 ~ void_air at @e[type=area_effect_cloud,tag=tileCloud] run function board:dice_roll/prevent/out_of_bounds