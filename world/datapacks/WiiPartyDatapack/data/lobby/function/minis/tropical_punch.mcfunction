place template games:tropical_punch -611 6 548

setblock -598 14 553 bamboo

execute as @e[type=armor_stand,x=-596,y=0,z=548,dx=-40,dy=30,dz=40,limit=2] run data merge entity @s {ShowArms:1b, NoBasePlate:1b,DisabledSlots:4144959,HandItems:[{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_model_data":5,"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1}]}},{}]}
execute as @e[type=armor_stand,x=-596,y=0,z=548,dx=-40,dy=30,dz=40,limit=1] run data merge entity @s {ShowArms:1b, NoBasePlate:1b,DisabledSlots:4144959,HandItems:[{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_model_data":3,"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1}]}},{}]}