#   Author        =   @ JevinLevin
#   Description   =   Runs every tick. Checks for when the player rolls, and runs the swapping animation
#   Called By     =   board:tiles/main


# Once the player has rolled, then it runs the rolled function
execute if score roll= tiles matches 1.. as @a[tag=turn] run function board:tiles/ufo/rolled

# Runs the swapping function every tick while the players are swapping, which runs the animations
execute if score ufo= tiles matches 2 run function board:tiles/ufo/swapping
# Force end if leaves
execute if score ufo= tiles matches 2 unless entity @a[tag=chosen] run function board:tiles/ufo/end

# Teleports the player back to their tile if they go out of bounds
execute if score ufo= tiles matches 1 as @a[tag=turn] at @s if block ~ ~1 ~ void_air at @e[type=area_effect_cloud,tag=tileCloud] run function board:dice_roll/prevent/out_of_bounds

execute as @e[type=item_display,tag=ufo,tag=scale] run function board:tiles/ufo/ufoscale