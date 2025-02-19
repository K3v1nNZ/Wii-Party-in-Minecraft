#   Author        =   @ T4Bl3rUs
#   Description   =   Runs commands as all the players ingame. No real reason for this other than small optimisations and organisation
#   Called By     =   games:38/repeating



scoreboard players remove @s 38cd 1

clear @s[predicate=!games:38camera] minecraft:carrot_on_a_stick
item replace entity @s[predicate=!games:38camera] hotbar.0 with minecraft:air
item replace entity @s[predicate=!games:38camera] hotbar.1 with minecraft:air
item replace entity @s[predicate=!games:38camera] hotbar.2 with minecraft:air
item replace entity @s[predicate=!games:38camera] hotbar.3 with minecraft:air
item replace entity @s[predicate=!games:38camera] hotbar.4 with minecraft:air
item replace entity @s[predicate=!games:38camera] hotbar.5 with minecraft:air
item replace entity @s[predicate=!games:38camera] hotbar.6 with minecraft:air
item replace entity @s[predicate=!games:38camera] hotbar.7 with minecraft:air
item replace entity @s[predicate=!games:38camera] hotbar.8 with minecraft:air

# Replaces their mainhand with a new one. CustomModelData=205 if a model is added
# Blue
item replace entity @s[team=blue,predicate=!games:38camera] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"translate":"game.Shutterpup.CameraName","bold":true,"italic":false,"color":"white"}',minecraft:lore=['{"translate":"game.Shutterpup.CameraLore","italic":false,"color":"#006DCC"}'],minecraft:custom_data={camera:1b}] 1
# Red
item replace entity @s[team=red,predicate=!games:38camera] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"translate":"game.Shutterpup.CameraName","bold":true,"italic":false,"color":"#FF5555"}',minecraft:lore=['{"translate":"game.Shutterpup.CameraLore","italic":false,"color":"#CF4545"}'],minecraft:custom_data={camera:1b}] 1
# Green
item replace entity @s[team=green,predicate=!games:38camera] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"translate":"game.Shutterpup.CameraName","bold":true,"italic":false,"color":"#55FF55"}',minecraft:lore=['{"translate":"game.Shutterpup.CameraLore","italic":false,"color":"#3AAD3A"}'],minecraft:custom_data={camera:1b}] 1
# Orange
item replace entity @s[team=orange,predicate=!games:38camera] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"translate":"game.Shutterpup.CameraName","bold":true,"italic":false,"color":"#FFAA00"}',minecraft:lore=['{"translate":"game.Shutterpup.CameraLore","italic":false,"color":"#BA7C00"}'],minecraft:custom_data={camera:1b}] 1

# Shows the actionbar
scoreboard players operation s= 38cd = @s 38cd
scoreboard players operation ms= 38cd = @s 38cd
scoreboard players operation mod= 38cd = @s 38cd
scoreboard players operation s= 38cd /= 20= 38cd
scoreboard players operation ms= 38cd %= 20= 38cd
scoreboard players operation ms= 38cd /= 2= 38cd
scoreboard players operation mod= 38cd %= 4= 38cd
scoreboard players set temp= 38pics 10
scoreboard players operation temp= 38pics -= @s 38pics



execute if score @s 38pics matches ..9 if score @s 38cd matches 1.. run title @s[team=blue] actionbar {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": ","type":"text"},{"score":{"name":"temp=","objective":"38pics"},"type":"score"},{"text":"/10 | ","type":"text"},{"translate":"game.Shutterpup.Cooldown"},{"text":": ","type":"text"},{"score":{"name":"s=","objective":"38cd"},"type":"score"},{"text":".","type":"text"},{"score":{"name":"ms=","objective":"38cd"},"type":"score"},{"text":"s","type":"text"}],"source":"storage","type":"nbt"}
execute if score @s 38pics matches ..9 if score @s 38cd matches ..0 run title @s[team=blue] actionbar {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": ","type":"text"},{"score":{"name":"temp=","objective":"38pics"},"type":"score"},{"text":"/10","type":"text"}],"source":"storage","type":"nbt"}
execute if score @s 38pics matches 10.. run title @s[team=blue] actionbar {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": 0/10","type":"text"}],"source":"storage","type":"nbt"}

execute if score @s 38pics matches ..9 if score @s 38cd matches 1.. run title @s[team=red] actionbar {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": ","type":"text"},{"score":{"name":"temp=","objective":"38pics"},"type":"score"},{"text":"/10 | ","type":"text"},{"translate":"game.Shutterpup.Cooldown"},{"text":": ","type":"text"},{"score":{"name":"s=","objective":"38cd"},"type":"score"},{"text":".","type":"text"},{"score":{"name":"ms=","objective":"38cd"},"type":"score"},{"text":"s","type":"text"}],"source":"storage","type":"nbt"}
execute if score @s 38pics matches ..9 if score @s 38cd matches ..0 run title @s[team=red] actionbar {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": ","type":"text"},{"score":{"name":"temp=","objective":"38pics"},"type":"score"},{"text":"/10","type":"text"}],"source":"storage","type":"nbt"}
execute if score @s 38pics matches 10.. run title @s[team=red] actionbar {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": 0/10","type":"text"}],"source":"storage","type":"nbt"}

execute if score @s 38pics matches ..9 if score @s 38cd matches 1.. run title @s[team=green] actionbar {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": ","type":"text"},{"score":{"name":"temp=","objective":"38pics"},"type":"score"},{"text":"/10 | ","type":"text"},{"translate":"game.Shutterpup.Cooldown"},{"text":": ","type":"text"},{"score":{"name":"s=","objective":"38cd"},"type":"score"},{"text":".","type":"text"},{"score":{"name":"ms=","objective":"38cd"},"type":"score"},{"text":"s","type":"text"}],"source":"storage","type":"nbt"}
execute if score @s 38pics matches ..9 if score @s 38cd matches ..0 run title @s[team=green] actionbar {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": ","type":"text"},{"score":{"name":"temp=","objective":"38pics"},"type":"score"},{"text":"/10","type":"text"}],"source":"storage","type":"nbt"}
execute if score @s 38pics matches 10.. run title @s[team=green] actionbar {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": 0/10","type":"text"}],"source":"storage","type":"nbt"}

execute if score @s 38pics matches ..9 if score @s 38cd matches 1.. run title @s[team=orange] actionbar {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": ","type":"text"},{"score":{"name":"temp=","objective":"38pics"},"type":"score"},{"text":"/10 | ","type":"text"},{"translate":"game.Shutterpup.Cooldown"},{"text":": ","type":"text"},{"score":{"name":"s=","objective":"38cd"},"type":"score"},{"text":".","type":"text"},{"score":{"name":"ms=","objective":"38cd"},"type":"score"},{"text":"s","type":"text"}],"source":"storage","type":"nbt"}
execute if score @s 38pics matches ..9 if score @s 38cd matches ..0 run title @s[team=orange] actionbar {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": ","type":"text"},{"score":{"name":"temp=","objective":"38pics"},"type":"score"},{"text":"/10","type":"text"}],"source":"storage","type":"nbt"}
execute if score @s 38pics matches 10.. run title @s[team=orange] actionbar {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.Shutterpup.Remaining"},{"text":": 0/10","type":"text"}],"source":"storage","type":"nbt"}

execute at @s if score mod= 38cd matches 0 if score @s 38cd matches 0.. run playsound minecraft:block.bamboo.break master @s ~ ~ ~ 1 2

# Saves the scene
execute if score @s rightClick matches 1.. if score @s 38pics matches ..9 if score @s 38cd matches ..0 at @s run function games:38/camera/capture
execute at @s[scores={rightClick=1..,38pics=..9,38cd=..0}] run playsound minecraft:block.tripwire.click_on master @s ~ ~ ~ 1 1
scoreboard players add @s[scores={rightClick=1..,38pics=..9,38cd=..0}] 38pics 1
scoreboard players set @s[scores={rightClick=1..,38pics=..9,38cd=..0}] 38cd 40

execute unless score @s 38cd matches 1.. run function games:38/xp_reset
execute if score @s 38cd matches 1.. run function games:38/xp_set