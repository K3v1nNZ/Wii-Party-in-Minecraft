advancement revoke @s only games:29/jellyfish_hit

execute if entity @s[tag=29stunned] run return fail
execute if entity @s[tag=29recover] run return fail

tag @s add 29stunned

scoreboard players set @s 29stunned 0

execute as @s[team=blue] on attacker run team join blue @s
execute as @s[team=red] on attacker run team join red @s
execute as @s[team=green] on attacker run team join green @s
execute as @s[team=orange] on attacker run team join orange @s

title @s times 0 20 20
title @s title {"text":"c","font":"minecraft:fade"}
title @s subtitle {"text":"","type":"text"}

execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["blue","29stun"]}
execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["red","29stun"]}
execute as @s[team=green] run summon marker ~ ~ ~ {Tags:["green","29stun"]}
execute as @s[team=orange] run summon marker ~ ~ ~ {Tags:["orange","29stun"]}

playsound entity.breeze.death master @s ~ ~ ~ 1 0.75
playsound minecraft:entity.generic.burn master @s ~ ~ ~ 1 0.5

effect give @s resistance infinite 255 true