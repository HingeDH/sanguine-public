item replace entity @s weapon.mainhand with minecraft:potion
data modify entity @s HandItems[0].tag.CustomPotionColor set value 16777215
data modify entity @s ArmorItems[3].tag.CustomPotionColor set value 16777215
data modify entity @s[tag=sanguine.trader_entity.has_head] ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.sanguine.custom_model_data.head
data modify entity @s HandItems[0].tag.CustomModelData set from entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle
data modify entity @s[tag=!sanguine.trader_entity.static,predicate=sanguine:entity/moving] HandItems[0].tag.CustomModelData set from entity @s ArmorItems[3].tag.sanguine.custom_model_data.moving

execute if entity @s[nbt=!{HurtTime:0s}] run function sanguine:entity/technical/hurt/main
effect clear @s glowing

# Exceptions
execute if entity @s[tag=sanguine.butcher.unhorned] run function sanguine:entity/butcher/edit_unhorned