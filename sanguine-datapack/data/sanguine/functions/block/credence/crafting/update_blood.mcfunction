# Init
scoreboard players set @s sanguine.max_blood 0

# Detect Candles, Set Max
scoreboard players reset #sanguine.temp_1
scoreboard players reset #sanguine.temp_2
scoreboard players reset #sanguine.temp_3
scoreboard players reset #sanguine.temp_4

execute store result score #sanguine.temp_1 sanguine.dummy run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered #minecraft:candles[candles=1,lit=true] force
execute store result score #sanguine.temp_2 sanguine.dummy run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered #minecraft:candles[candles=2,lit=true] force
scoreboard players operation #sanguine.temp_2 sanguine.dummy *= #2 sanguine.dummy
execute store result score #sanguine.temp_3 sanguine.dummy run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered #minecraft:candles[candles=3,lit=true] force
scoreboard players operation #sanguine.temp_3 sanguine.dummy *= #3 sanguine.dummy
execute store result score #sanguine.temp_4 sanguine.dummy run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered #minecraft:candles[candles=4,lit=true] force
scoreboard players operation #sanguine.temp_4 sanguine.dummy *= #4 sanguine.dummy

scoreboard players operation @s sanguine.max_blood += #sanguine.temp_1 sanguine.dummy
scoreboard players operation @s sanguine.max_blood += #sanguine.temp_2 sanguine.dummy
scoreboard players operation @s sanguine.max_blood += #sanguine.temp_3 sanguine.dummy
scoreboard players operation @s sanguine.max_blood += #sanguine.temp_4 sanguine.dummy

scoreboard players operation @s sanguine.max_blood *= #2 sanguine.dummy
execute if score @s sanguine.max_blood matches 33.. run scoreboard players set @s sanguine.max_blood 32

# Detect Skulls, Set Max
scoreboard players reset #sanguine.temp_1 sanguine.dummy
execute store success score #sanguine.temp_1 sanguine.dummy run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered #sanguine:skulls force
execute if score #sanguine.temp_1 sanguine.dummy matches 1 run scoreboard players add @s sanguine.max_blood 32

# Functions
loot replace block ~ ~ ~ container.10 loot sanguine:technical/blood_drop
scoreboard players add @s sanguine.blood 0
execute if score @s sanguine.blood matches ..-1 run scoreboard players set @s sanguine.blood 0
execute if score @s sanguine.blood > @s sanguine.max_blood run scoreboard players operation @s sanguine.blood = @s sanguine.max_blood

item modify block ~ ~ ~ container.10 sanguine:blood_display
