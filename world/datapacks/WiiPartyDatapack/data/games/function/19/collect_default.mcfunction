particle minecraft:wax_off ~ ~1 ~ 0.5 1 0.5 1 10
scoreboard players add @s 19score 1
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

title @s title ""
title @s subtitle {"bold":true,"color":"#FF87F7","text":"+1"}

# summon text_display ~ ~ ~ {alignment:center, billboard:"center",teleport_duration:1,shadow:1b,Tags:["19popup"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"#FF87F7","text":"+1"}',background:16711680}