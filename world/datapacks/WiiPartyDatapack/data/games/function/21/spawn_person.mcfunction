summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["21person","21temp"],DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",count:1},{id:"minecraft:leather_leggings",count:1},{id:"minecraft:leather_chestplate",count:1},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"JevinLevin"}}}],Rotation:[-90f,0f]}

execute store result score @n[type=armor_stand,tag=21temp] 21pose run random value 1..3

tag @e remove 21temp