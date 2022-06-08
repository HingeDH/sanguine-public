execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..32] run function sanguine:entity/technical/trader_entity/ai/track_nearest_player_survival

execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..6] anchored eyes facing entity @p[gamemode=!creative,gamemode=!spectator] eyes run function sanguine:entity/reaper/raycast
execute unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..6] unless score @s sanguine.dummy matches 400.. run scoreboard players remove @s sanguine.dummy2 2 
execute if score @s sanguine.dummy2 matches ..0 run scoreboard players set @s sanguine.dummy2 0

execute if entity @s[tag=sanguine.reaper.located_player] if entity @a[gamemode=!creative,gamemode=!spectator,distance=5..16] run scoreboard players add @s sanguine.dummy 1
execute if score @s sanguine.dummy matches 400.. run tag @s add sanguine.reaper.found
execute if score @s sanguine.dummy2 matches 25.. run tag @s add sanguine.reaper.found
execute if entity @s[tag=sanguine.reaper.found] run scoreboard players add @s sanguine.dummy2 1

execute unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..6] unless score @s sanguine.dummy matches 400.. run tag @s remove sanguine.reaper.found

execute if score @s sanguine.dummy2 matches 1 run function sanguine:entity/reaper/prime
execute if score @s sanguine.dummy2 matches 1..2 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361008
execute if score @s sanguine.dummy2 matches 3..4 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361009
execute if score @s sanguine.dummy2 matches 5..6 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361010
execute if score @s sanguine.dummy2 matches 7..8 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361011
execute if score @s sanguine.dummy2 matches 9..10 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361012
execute if score @s sanguine.dummy2 matches 11..12 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361013
execute if score @s sanguine.dummy2 matches 13..14 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361014
execute if score @s sanguine.dummy2 matches 15..16 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361015
execute if score @s sanguine.dummy2 matches 17..18 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361016
execute if score @s sanguine.dummy2 matches 19..20 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361017
execute if score @s sanguine.dummy2 matches 21..22 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361018
execute if score @s sanguine.dummy2 matches 23..24 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361019
execute if score @s sanguine.dummy2 matches 25..26 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361020
execute if score @s sanguine.dummy2 matches 27..28 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361021
execute if score @s sanguine.dummy2 matches 29..30 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361022
execute if score @s sanguine.dummy2 matches 31..32 run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361023
execute if score @s sanguine.dummy2 matches 33.. run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361024
execute if score @s sanguine.dummy2 matches 1.. run data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.moving set from entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle

execute if score @s sanguine.dummy2 matches 35.. run function sanguine:entity/reaper/explode
execute if score @s sanguine.dummy2 matches ..0 run function sanguine:entity/reaper/cancel

effect clear @s poison