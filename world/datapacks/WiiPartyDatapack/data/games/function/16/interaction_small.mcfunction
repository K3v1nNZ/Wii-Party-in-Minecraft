execute as @s[team=blue] as @e[type=interaction,tag=16interact,tag=blue] run data merge entity @s {width:0f}
execute as @s[team=red] as @e[type=interaction,tag=16interact,tag=red] run data merge entity @s {width:0f}
execute as @s[team=green] as @e[type=interaction,tag=16interact,tag=green] run data merge entity @s {width:0f}
execute as @s[team=orange] as @e[type=interaction,tag=16interact,tag=orange] run data merge entity @s {width:0f}

attribute @s player.entity_interaction_range base set 0