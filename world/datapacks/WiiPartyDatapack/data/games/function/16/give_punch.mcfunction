clear @s crossbow
clear @s carrot_on_a_stick

# item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_data={16punch:1b},unbreakable={show_in_tooltip:0b},custom_model_data=16002] 1
# item replace entity @s weapon.mainhand with crossbow[custom_data={16punch:1b},unbreakable={show_in_tooltip:0b},enchantments={levels:{"minecraft:quick_charge":255}},custom_model_data=1] 1

# execute if entity @s[team=blue] run data modify storage game16 punch.components."minecraft:custom_model_data" set value 1
# execute if entity @s[team=red] run data modify storage game16 punch.components."minecraft:custom_model_data" set value 3
# execute if entity @s[team=green] run data modify storage game16 punch.components."minecraft:custom_model_data" set value 5
# execute if entity @s[team=orange] run data modify storage game16 punch.components."minecraft:custom_model_data" set value 7
# 
# function games:16/give_charged with storage minecraft:game16 punch

item replace entity @s[team=blue] weapon.mainhand with crossbow[custom_data={16punch:2},unbreakable={show_in_tooltip:0b},custom_model_data=1,enchantment_glint_override=true,charged_projectiles=[{id:"tipped_arrow"}],hide_tooltip={}]
item replace entity @s[team=red] weapon.mainhand with crossbow[custom_data={16punch:2},unbreakable={show_in_tooltip:0b},custom_model_data=3,enchantment_glint_override=true,charged_projectiles=[{id:"tipped_arrow"}],hide_tooltip={}]
item replace entity @s[team=green] weapon.mainhand with crossbow[custom_data={16punch:2},unbreakable={show_in_tooltip:0b},custom_model_data=5,enchantment_glint_override=true,charged_projectiles=[{id:"tipped_arrow"}],hide_tooltip={}]
item replace entity @s[team=orange] weapon.mainhand with crossbow[custom_data={16punch:2},unbreakable={show_in_tooltip:0b},custom_model_data=7,enchantment_glint_override=true,charged_projectiles=[{id:"tipped_arrow"}],hide_tooltip={}]