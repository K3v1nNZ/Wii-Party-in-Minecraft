tp @s ~ ~.1 ~

scoreboard players add @s 19popup 1

data modify entity @s[type=text_display,tag=10score,scores={19popup=4}] text_opacity set value 210
data modify entity @s[type=text_display,tag=10score,scores={19popup=5}] text_opacity set value 170
data modify entity @s[type=text_display,tag=10score,scores={19popup=6}] text_opacity set value 130
data modify entity @s[type=text_display,tag=10score,scores={19popup=7}] text_opacity set value 90
data modify entity @s[type=text_display,tag=10score,scores={19popup=8}] text_opacity set value 50
data modify entity @s[type=text_display,tag=10score,scores={19popup=9}] text_opacity set value 10

kill @s[scores={19popup=10..}]