summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["21person","21temp"],DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16777215}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16777215}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16777215}},{id:"minecraft:player_head",count:1}],Rotation:[-90f,0f]}

execute store result score @n[type=armor_stand,tag=21temp] 21pose run random value 1..3

### # Store armor in storage
### data modify storage games:21 Person set from entity @n[type=armor_stand,tag=21temp] ArmorItems
### 
### execute store result storage games:21 Person[0].components."minecraft:dyed_color" double 1 run random value 0..16777215
### execute store result storage games:21 Person[1].components."minecraft:dyed_color" double 1 run random value 0..16777215
### execute store result storage games:21 Person[2].components."minecraft:dyed_color" double 1 run random value 0..16777215
### function games:21/random_head
### 
### data modify entity @n[type=armor_stand,tag=21temp] ArmorItems set from storage games:21 Person
### 
### tag @e remove 21temp