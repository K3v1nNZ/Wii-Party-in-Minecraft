particle smoke ~ ~1 ~ 0.5 1 0.5 0.05 10
scoreboard players remove @s[scores={19score=1..}] 19score 1
playsound entity.villager.hurt master @s ~ ~ ~ 1 1.25 1

title @s title ""
title @s subtitle {"text":"-1","bold":true,"color":"#9c7d52"}

# summon text_display ~ ~ ~ {alignment:center, billboard:"center",teleport_duration:1,shadow:1b,Tags:["19popup"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"#6f5126","text":"-1"}',background:16711680}