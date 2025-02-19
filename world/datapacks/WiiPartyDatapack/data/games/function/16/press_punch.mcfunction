advancement revoke @s only games:16/left_click

# execute if score ingame= 16scores matches 2 at @s anchored eyes unless score @s 16cooldown matches 1.. run function games:16/punch
execute as @s[tag=!16dead] if score ingame= 16scores matches 2 at @s anchored eyes unless score @s 16cooldown matches 1.. unless score @s 16punchDelay matches 0.. run scoreboard players set @s 16punchDelay 2