data modify storage minecraft:game38 display set from storage minecraft:game38 orange[0]
data remove storage minecraft:game38 orange[0]
function games:38/camera/display

scoreboard players add total= 38scores 1
execute if score hit= 38scores >= min= 38scores run scoreboard players add correct= 38scores 1
execute if score hit= 38scores >= min= 38scores as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.25

data modify storage minecraft:game38 temp set value []
execute store success score continue= 38scores run data modify storage minecraft:game38 temp set from storage minecraft:game38 orange
data remove storage minecraft:game38 temp

execute if score continue= 38scores matches 1 run title @a[tag=playing] actionbar {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"selector":"@a[team=orange]","type":"selector"},": ",{"score":{"name":"correct=","objective":"38scores"},"type":"score"},{"text":"/","type":"text"},{"score":{"name":"total=","objective":"38scores"},"type":"score"}],"source":"storage","type":"nbt"}
execute if score continue= 38scores matches 0 run title @a[tag=playing] actionbar ""
execute if score continue= 38scores matches 0 run title @a[tag=playing] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"score":{"name":"correct=","objective":"38scores"},"type":"score"},{"text":"/","type":"text"},{"score":{"name":"total=","objective":"38scores"},"type":"score"}],"source":"storage","type":"nbt"}
execute if score continue= 38scores matches 0 run scoreboard players operation @a[team=orange] 38scores = correct= 38scores

execute if score continue= 38scores matches 1 run schedule function games:38/gallery/internal/orange 1s
execute if score continue= 38scores matches 0 run schedule function games:38/camera/enddisplay 3s
execute if score continue= 38scores matches 0 run schedule function games:38/end_game 3s