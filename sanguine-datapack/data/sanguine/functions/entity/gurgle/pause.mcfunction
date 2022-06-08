data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361030
data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.moving set value 8361030

attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2-0 sanguine.movement_speed -100 add

playsound sanguine:entity.gurgle.gag hostile @a
tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator]