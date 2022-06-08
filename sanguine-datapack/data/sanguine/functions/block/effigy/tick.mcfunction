execute if score @s sanguine.dummy matches 1.. run scoreboard players remove @s sanguine.dummy 1

execute if score @s sanguine.dummy matches 1 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361049
execute if score @s sanguine.dummy matches 3 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361050
execute if score @s sanguine.dummy matches 5 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361051
execute if score @s sanguine.dummy matches 7 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361050

execute unless predicate sanguine:block/effigy_check run function sanguine:block/effigy/break