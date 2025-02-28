scoreboard players set @a[tag=ingame] 41jump 0
scoreboard players set @a[tag=ingame] 41score 0

function games:41/display
execute as @a[team=blue] as @e[type=text_display,tag=41timer,tag=blue] run function games:41/set_display
execute as @a[team=red] as @e[type=text_display,tag=41timer,tag=red] run function games:41/set_display
execute as @a[team=green] as @e[type=text_display,tag=41timer,tag=green] run function games:41/set_display
execute as @a[team=orange] as @e[type=text_display,tag=41timer,tag=orange] run function games:41/set_display