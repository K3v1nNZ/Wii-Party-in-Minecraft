tag @s remove 41jump

attribute @s generic.gravity base set 0.08

scoreboard players add @s 41score 1
function games:41/display

execute as @s[team=blue] as @e[type=text_display,tag=41timer,tag=blue] run function games:41/set_display
execute as @s[team=red] as @e[type=text_display,tag=41timer,tag=red] run function games:41/set_display
execute as @s[team=green] as @e[type=text_display,tag=41timer,tag=green] run function games:41/set_display
execute as @s[team=orange] as @e[type=text_display,tag=41timer,tag=orange] run function games:41/set_display