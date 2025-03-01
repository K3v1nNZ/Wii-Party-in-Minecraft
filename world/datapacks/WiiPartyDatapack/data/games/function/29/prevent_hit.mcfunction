tag @s add 29temp
execute if entity @s[team=!blue] as @p[tag=ingame] if entity @s[team=blue,tag=29stunned] run team join blue @n[tag=29temp]
execute if entity @s[team=!red] as @p[tag=ingame] if entity @s[team=red,tag=29stunned] run team join red @n[tag=29temp]
execute if entity @s[team=!green] as @p[tag=ingame] if entity @s[team=green,tag=29stunned] run team join green @n[tag=29temp]
execute if entity @s[team=!orange] as @p[tag=ingame] if entity @s[team=orange,tag=29stunned] run team join orange @n[tag=29temp]
execute if entity @s[team=!blue] as @p[tag=ingame] if entity @s[team=blue,tag=29recover] run team join blue @n[tag=29temp]
execute if entity @s[team=!red] as @p[tag=ingame] if entity @s[team=red,tag=29recover] run team join red @n[tag=29temp]
execute if entity @s[team=!green] as @p[tag=ingame] if entity @s[team=green,tag=29recover] run team join green @n[tag=29temp]
execute if entity @s[team=!orange] as @p[tag=ingame] if entity @s[team=orange,tag=29recover] run team join orange @n[tag=29temp]
tag @s remove 29temp
