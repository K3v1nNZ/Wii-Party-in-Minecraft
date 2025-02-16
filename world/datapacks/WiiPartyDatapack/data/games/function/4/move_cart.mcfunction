# Tag linked player
execute if entity @s[tag=blue] run tag @a[tag=ingame,team=blue] add tempCart
execute if entity @s[tag=red] run tag @a[tag=ingame,team=red] add tempCart
execute if entity @s[tag=green] run tag @a[tag=ingame,team=green] add tempCart
execute if entity @s[tag=orange] run tag @a[tag=ingame,team=orange] add tempCart

# No Powerup
execute if block ~ 16 ~ minecraft:lime_concrete unless block ~.6 18 ~ minecraft:red_concrete align z positioned ~ ~ ~.5 if entity @a[tag=tempCart,scores={4direction=1}] run tp @s[tag=!4super] ~.1 ~ ~
execute if block ~ 16 ~ minecraft:lime_concrete unless block ~-.6 18 ~ minecraft:red_concrete align z positioned ~ ~ ~.5 if entity @a[tag=tempCart,scores={4direction=3}] run tp @s[tag=!4super] ~-.1 ~ ~
execute if block ~ 16 ~ minecraft:lime_concrete unless block ~ 18 ~.6 minecraft:red_concrete align x positioned ~.5 ~ ~ if entity @a[tag=tempCart,scores={4direction=2}] run tp @s[tag=!4super] ~ ~ ~.1
execute if block ~ 16 ~ minecraft:lime_concrete unless block ~ 18 ~-.6 minecraft:red_concrete align x positioned ~.5 ~ ~ if entity @a[tag=tempCart,scores={4direction=4}] run tp @s[tag=!4super] ~ ~ ~-.1
# Powerup
execute if block ~ 16 ~ minecraft:lime_concrete unless block ~.6 18 ~ minecraft:red_concrete align z positioned ~ ~ ~.5 if entity @a[tag=tempCart,scores={4direction=1}] run tp @s[tag=4super] ~.166 ~ ~
execute if block ~ 16 ~ minecraft:lime_concrete unless block ~-.6 18 ~ minecraft:red_concrete align z positioned ~ ~ ~.5 if entity @a[tag=tempCart,scores={4direction=3}] run tp @s[tag=4super] ~-.166 ~ ~
execute if block ~ 16 ~ minecraft:lime_concrete unless block ~ 18 ~.6 minecraft:red_concrete align x positioned ~.5 ~ ~ if entity @a[tag=tempCart,scores={4direction=2}] run tp @s[tag=4super] ~ ~ ~.166
execute if block ~ 16 ~ minecraft:lime_concrete unless block ~ 18 ~-.6 minecraft:red_concrete align x positioned ~.5 ~ ~ if entity @a[tag=tempCart,scores={4direction=4}] run tp @s[tag=4super] ~ ~ ~-.166


# Particles when going fast
execute at @s[tag=4super] if entity @a[tag=tempCart,scores={4direction=1}] run particle end_rod ~-.166 ~.5 ~ 0 0 0 0.01 1
execute at @s[tag=4super] if entity @a[tag=tempCart,scores={4direction=3}] run particle end_rod ~.166 ~.5 ~ 0 0 0 0.01 1
execute at @s[tag=4super] if entity @a[tag=tempCart,scores={4direction=2}] run particle end_rod ~ ~.5 ~-.166 0 0 0 0.01 1
execute at @s[tag=4super] if entity @a[tag=tempCart,scores={4direction=4}] run particle end_rod ~ ~.5 ~.166 0 0 0 0.01 1


# Tp interaction
execute unless score @p[tag=tempCart] 4shootCooldown matches 1.. as @s[tag=blue] run tp @e[type=interaction,tag=4cart,tag=blue] ^ ^.5 ^
execute unless score @p[tag=tempCart] 4shootCooldown matches 1.. as @s[tag=red] run tp @e[type=interaction,tag=4cart,tag=red] ^ ^.5 ^
execute unless score @p[tag=tempCart] 4shootCooldown matches 1.. as @s[tag=green] run tp @e[type=interaction,tag=4cart,tag=green] ^ ^.5 ^
execute unless score @p[tag=tempCart] 4shootCooldown matches 1.. as @s[tag=orange] run tp @e[type=interaction,tag=4cart,tag=orange] ^ ^.5 ^
execute if score @p[tag=tempCart] 4shootCooldown matches 1.. as @s[tag=blue] run tp @e[type=interaction,tag=4cart,tag=blue] ~ ~-3 ~
execute if score @p[tag=tempCart] 4shootCooldown matches 1.. as @s[tag=red] run tp @e[type=interaction,tag=4cart,tag=red] ~ ~-3 ~
execute if score @p[tag=tempCart] 4shootCooldown matches 1.. as @s[tag=green] run tp @e[type=interaction,tag=4cart,tag=green] ~ ~-3 ~
execute if score @p[tag=tempCart] 4shootCooldown matches 1.. as @s[tag=orange] run tp @e[type=interaction,tag=4cart,tag=orange] ~ ~-3 ~
execute as @e[type=interaction,tag=4cart] store result entity @s Air double 1 run time query gametime

tag @a remove tempCart