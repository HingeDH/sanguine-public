data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361025
data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.moving set value 8361026

attribute @s minecraft:generic.movement_speed modifier remove 8-3-6-2-0
tag @s remove sanguine.carrion.flesh_hook
scoreboard players reset @s sanguine.dummy
scoreboard players reset @s sanguine.dummy2

playsound sanguine:entity.carrion.whip_end hostile @a