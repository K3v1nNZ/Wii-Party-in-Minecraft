schedule function games:21/display_start 2s

scoreboard players set ingame= 21scores 3

execute as @a[tag=playing] at @s run playsound block.note_block.banjo master @s ~ ~ ~ 1 1

bossbar set minecraft:21bluetimer visible false
bossbar set minecraft:21redtimer visible false
bossbar set minecraft:21greentimer visible false
bossbar set minecraft:21orangetimer visible false