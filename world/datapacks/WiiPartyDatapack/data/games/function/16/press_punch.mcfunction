advancement revoke @s only games:16/left_click_b
advancement revoke @s only games:16/left_click_r
advancement revoke @s only games:16/left_click_g
advancement revoke @s only games:16/left_click_o

# execute if score ingame= 16scores matches 2 at @s anchored eyes unless score @s 16cooldown matches 1.. run function games:16/punch
execute if score ingame= 16scores matches 2 at @s anchored eyes unless score @s 16cooldown matches 1.. unless score @s 16punchDelay matches 0.. run scoreboard players set @s 16punchDelay 2