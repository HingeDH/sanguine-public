execute if entity @s[nbt={HurtTime:9s}] run function sanguine:entity/technical/hurt/9s
execute if entity @s[tag=sanguine.trader_entity] store result score original_tint sanguine.dummy run data get entity @s HandItems[0].tag.CustomPotionColor
execute if entity @s[tag=!sanguine.trader_entity] store result score original_tint sanguine.dummy run data get entity @s ArmorItems[3].tag.CustomPotionColor
execute if score original_tint sanguine.dummy matches 16777215 run data modify entity @s HandItems[0].tag.CustomPotionColor set value 16753571
execute if score original_tint sanguine.dummy matches 16777215 run data modify entity @s ArmorItems[3].tag.CustomPotionColor set value 16753571
execute unless score original_tint sanguine.dummy matches 16777215 run function sanguine:entity/technical/hurt/tint_average