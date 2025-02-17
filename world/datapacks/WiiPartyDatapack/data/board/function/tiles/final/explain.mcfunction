tellraw @a[tag=playing] [{"translate":"board.Tiles.Final.Info","color":"gray","with":[{"translate":"board.Tiles.Final.Phil","color":"light_purple"}]}]

execute as @a[tag=playing] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 2

schedule function board:tiles/final/begin 2s