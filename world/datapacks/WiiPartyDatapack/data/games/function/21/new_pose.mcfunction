scoreboard players operation @s 21posePrev = @s 21pose

execute if score @s 21posePrev matches 1 run scoreboard players set @s 21pose 2
execute if score @s 21posePrev matches 3 run scoreboard players set @s 21pose 2

execute if score @s 21posePrev matches 2 store result score random= 21scores run random value 1..2
execute if score @s 21posePrev matches 2 if score random= 21scores matches 1 run scoreboard players set @s 21pose 1
execute if score @s 21posePrev matches 2 if score random= 21scores matches 2 run scoreboard players set @s 21pose 3





scoreboard players set @s 21poseTime 0
execute store result score @s 21poseDelay run random value 20..160