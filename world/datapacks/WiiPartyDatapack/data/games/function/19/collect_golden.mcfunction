particle minecraft:wax_on ~ ~1 ~ 0.5 1 0.5 1 10
scoreboard players add @s 19score 3
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5 1

title @s title ""
title @s subtitle {"color":"#FFFFFF","text":"+3","font":"minecraft:gold","bold":true}

# summon text_display ~ ~ ~ {alignment:center, billboard:"center",teleport_duration:1,shadow:1b,Tags:["19popup"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"bold":true,"color":"#FFFFFF","text":"+3","font":"minecraft:gold"}',background:16711680}