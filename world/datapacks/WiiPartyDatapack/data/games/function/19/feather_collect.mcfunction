
title @s times 3 10 10

execute if entity @n[type=item_display,tag=19feather,dx=0,dy=1,dz=0,tag=default] run function games:19/collect_default
execute if entity @n[type=item_display,tag=19feather,dx=0,dy=1,dz=0,tag=golden] run function games:19/collect_golden
execute if entity @n[type=item_display,tag=19feather,dx=0,dy=1,dz=0,tag=bad] run function games:19/collect_bad

kill @e[type=item_display,tag=19feather,dx=0,dy=1,dz=0]
