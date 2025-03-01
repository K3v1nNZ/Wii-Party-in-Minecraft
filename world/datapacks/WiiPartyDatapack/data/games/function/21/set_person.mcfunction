# Store armor in storage
data modify storage games:21 Person set from entity @s ArmorItems

execute store result storage games:21 Person[0].components."minecraft:dyed_color" double 1 run random value 0..16777215
execute store result storage games:21 Person[1].components."minecraft:dyed_color" double 1 run random value 0..16777215
execute store result storage games:21 Person[2].components."minecraft:dyed_color" double 1 run random value 0..16777215
function games:21/random_head

data modify entity @s ArmorItems set from storage games:21 Person

tag @s add 21init