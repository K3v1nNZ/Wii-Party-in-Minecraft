scoreboard players set timer= minigameSelect 0
execute store result score selected= minigameSelect run random value 1..3
execute store result score maxTicks= minigameSelect run random value 20..30
scoreboard players set currentTicks= minigameSelect 0
