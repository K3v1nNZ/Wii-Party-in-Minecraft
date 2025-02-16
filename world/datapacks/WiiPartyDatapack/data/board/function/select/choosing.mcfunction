execute if predicate games:riding run function general:wasd/calc/main_mount

execute if score cooldown= minigameSelect matches 1.. run scoreboard players remove cooldown= minigameSelect 1

execute if entity @s[tag=local.wasd_a] unless score cooldown= minigameSelect matches 1.. run tag @s add selectChanged
execute if entity @s[tag=local.wasd_d] unless score cooldown= minigameSelect matches 1.. run tag @s add selectChanged

execute if score selected= minigameSelect matches 1..3 if entity @s[tag=selectChanged,tag=local.wasd_a] run scoreboard players remove selected= minigameSelect 1
execute if score selected= minigameSelect matches 1..3 if entity @s[tag=selectChanged,tag=local.wasd_d] run scoreboard players add selected= minigameSelect 1

execute if score selected= minigameSelect matches -1 if entity @s[tag=selectChanged,tag=local.wasd_a] run scoreboard players set selected= minigameSelect 1
execute if score selected= minigameSelect matches -1 if entity @s[tag=selectChanged,tag=local.wasd_d] run scoreboard players set selected= minigameSelect 3

execute if score selected= minigameSelect matches 0 run scoreboard players set selected= minigameSelect 3
execute if score selected= minigameSelect matches 4 run scoreboard players set selected= minigameSelect 1



execute if entity @s[tag=selectChanged] unless score cooldown= minigameSelect matches 1.. run scoreboard players set cooldown= minigameSelect 3
execute if entity @s[tag=selectChanged] run playsound block.note_block.hat master @a ~ ~ ~ 10000
execute if entity @s[tag=selectChanged] run title @a[tag=playing] times 0 1000000 10
execute if entity @s[tag=selectChanged] run function board:select/display_minigames

clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={selectstick:1b}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{selectstick:1b}}}}]
item replace entity @s weapon.offhand with carrot_on_a_stick[unbreakable={},custom_model_data=1,custom_data={selectstick:1b},hide_tooltip={},hide_additional_tooltip={}] 1

execute if score selected= minigameSelect matches 1..3 if score @s rightClick matches 1.. run function board:select/end_choose


tag @s remove selectChanged


gamemode adventure @s[gamemode=!adventure]
