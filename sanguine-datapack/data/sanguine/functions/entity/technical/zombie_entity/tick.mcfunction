data modify entity @s ArmorItems[3].tag.CustomPotionColor set value 16777215
data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle
data modify entity @s[predicate=sanguine:entity/moving] ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.sanguine.custom_model_data.moving

execute if entity @s[nbt=!{HurtTime:0s}] run function sanguine:entity/technical/hurt/main
effect clear @s glowing