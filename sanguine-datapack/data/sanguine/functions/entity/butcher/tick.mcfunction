effect clear @s poison

# Charging
execute if score @s[tag=sanguine.butcher.charging] sanguine.dummy matches 1.. run scoreboard players remove @s sanguine.dummy 1
execute if score @s[tag=sanguine.butcher.charging] sanguine.dummy matches 59..60 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361034
execute if score @s[tag=sanguine.butcher.charging] sanguine.dummy matches 57..58 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361035
execute if score @s[tag=sanguine.butcher.charging] sanguine.dummy matches 55..56 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361036
execute if score @s[tag=sanguine.butcher.charging] sanguine.dummy matches 53..54 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361037
execute if score @s[tag=sanguine.butcher.charging] sanguine.dummy matches 51..52 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361033
execute if score @s[tag=sanguine.butcher.charging] sanguine.dummy matches 51.. run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.moving set from entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle
execute if score @s[tag=sanguine.butcher.charging] sanguine.dummy matches 2 run function sanguine:entity/butcher/charge_release
execute if entity @s[tag=sanguine.butcher.charging] if predicate sanguine:chance/0.1 run particle minecraft:campfire_cosy_smoke ~ ~0.25 ~ 0.5 0.5 0.5 0 1

# Charge Released
execute if score @s[tag=sanguine.butcher.charge] sanguine.dummy matches 1.. run function sanguine:entity/butcher/move_forwards
execute if score @s[tag=sanguine.butcher.charge] sanguine.dummy matches 2 run function sanguine:entity/butcher/charge_end

# Goring Nearby Players
execute if entity @s[tag=sanguine.butcher.goring] if score @s sanguine.dummy matches 1.. run scoreboard players remove @s sanguine.dummy 1
execute if entity @s[tag=sanguine.butcher.goring] if score @s sanguine.dummy matches 7..8 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361038
execute if entity @s[tag=sanguine.butcher.goring] if score @s sanguine.dummy matches 5 as @a[distance=..2.5,gamemode=!creative,gamemode=!spectator] run function sanguine:entity/player/apply_damage/butcher
execute if entity @s[tag=sanguine.butcher.goring] if score @s sanguine.dummy matches 5..6 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361039
execute if entity @s[tag=sanguine.butcher.goring] if score @s sanguine.dummy matches 3..4 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361038
execute if entity @s[tag=sanguine.butcher.goring] if score @s sanguine.dummy matches 2 run function sanguine:entity/butcher/gore_end
execute if score @s[tag=sanguine.butcher.goring] sanguine.dummy matches 1.. run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.moving set from entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle
