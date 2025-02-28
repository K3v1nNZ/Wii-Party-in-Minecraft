tag @s add 29temp
tag @p[tag=ingame] add 29temp
execute as @a[tag=29temp] if entity @s[team=blue] run team join blue @e[type=drowned,tag=29temp]
execute as @a[tag=29temp] if entity @s[team=red] run team join red @e[type=drowned,tag=29temp]
execute as @a[tag=29temp] if entity @s[team=green] run team join green @e[type=drowned,tag=29temp]
execute as @a[tag=29temp] if entity @s[team=orange] run team join orange @e[type=drowned,tag=29temp]
tag @e remove 29temp