tag @s remove sanguine.butcher.charging
tag @s remove sanguine.butcher.charge
attribute @s minecraft:generic.movement_speed modifier remove 8-3-6-2-1

data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361031
data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.moving set value 8361032

data modify entity @s Invulnerable set value 0b
data modify entity @s NoAI set value 0b
attribute @s minecraft:generic.movement_speed modifier remove 8-3-6-2-0
attribute @s minecraft:generic.knockback_resistance modifier remove 8-3-6-2-0
attribute @s minecraft:generic.armor modifier remove 8-3-6-2-0

execute as @a[distance=..1.5,gamemode=!creative,gamemode=!spectator] run function sanguine:entity/player/apply_damage/butcher

scoreboard players reset @s sanguine.dummy
scoreboard players reset @s sanguine.dummy2
playsound sanguine:entity.butcher.charge_end hostile @a

execute at @s run tp @s ^ ^ ^-1