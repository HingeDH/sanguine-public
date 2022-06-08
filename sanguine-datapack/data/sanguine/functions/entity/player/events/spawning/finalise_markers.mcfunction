# Setup
scoreboard players reset @s sanguine.dummy
scoreboard players reset @s sanguine.dummy2
execute if score #sanguine.blood_moon.level sanguine.dummy matches 1 run data merge storage sanguine:storage {min: 1, max: 4}
execute if score #sanguine.blood_moon.level sanguine.dummy matches 2 run data merge storage sanguine:storage {min: 1, max: 5}
execute if score #sanguine.blood_moon.level sanguine.dummy matches 3 run data merge storage sanguine:storage {min: 1, max: 7}
execute if score #sanguine.blood_moon.level sanguine.dummy matches 4 run data merge storage sanguine:storage {min: 1, max: 8}
execute if score #sanguine.blood_moon.level sanguine.dummy matches 5.. run data merge storage sanguine:storage {min: 1, max: 9}

# Save input parameters as scores
execute store result score #min sanguine.dummy run data get storage sanguine:storage min
execute store result score #max sanguine.dummy run data get storage sanguine:storage max
scoreboard players operation #original_max sanguine.dummy = #max sanguine.dummy
scoreboard players operation #max sanguine.dummy -= #min sanguine.dummy
scoreboard players add #max sanguine.dummy 1

# Xn+1 = (aXn + c) mod m
scoreboard players operation #lcg sanguine.dummy *= #lcg_a sanguine.dummy
scoreboard players operation #lcg sanguine.dummy += #lcg_c sanguine.dummy
scoreboard players operation #lcg sanguine.dummy %= #lcg_m sanguine.dummy

# Trim "low quality" bits
scoreboard players operation $out sanguine.dummy = #lcg sanguine.dummy
scoreboard players operation $out sanguine.dummy /= #original_max sanguine.dummy

# Get within desired range
scoreboard players operation $out sanguine.dummy %= #max sanguine.dummy
scoreboard players operation $out sanguine.dummy += #min sanguine.dummy

scoreboard players operation @s sanguine.dummy2 = $out sanguine.dummy

# Run Functions
execute if score @s sanguine.dummy2 matches 1..3 run function sanguine:commands/summon/vanilla/zombie
execute if score @s sanguine.dummy2 matches 4 run function sanguine:commands/summon/vanilla/skeleton
execute if score @s sanguine.dummy2 matches 5 run function sanguine:commands/summon/unborn
execute if score @s sanguine.dummy2 matches 6 run function sanguine:commands/summon/butcher
execute if score @s sanguine.dummy2 matches 7 run function sanguine:commands/summon/gurgle
execute if score @s sanguine.dummy2 matches 8 run function sanguine:commands/summon/carrion
execute if score @s sanguine.dummy2 matches 9 run function sanguine:commands/summon/reaper

kill @s