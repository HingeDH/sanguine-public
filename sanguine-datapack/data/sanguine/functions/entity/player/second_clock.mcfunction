# Events
execute if score #sanguine.blood_moon.phase sanguine.dummy matches 2 run particle minecraft:crimson_spore ~ ~ ~ 6 6 6 0.1 100 normal @s
execute if score #sanguine.blood_moon.phase sanguine.dummy matches 1 run particle minecraft:entity_effect ~ ~ ~ 0.996078431372549 0.9882352941176471 0.6 1 0 force @s
execute if score #sanguine.blood_moon.phase sanguine.dummy matches 2 run particle minecraft:entity_effect ~ ~ ~ 0.996078431372549 0.9882352941176471 0.1 1 0 force @s
execute unless score #sanguine.blood_moon.phase sanguine.dummy matches 1.. run particle minecraft:entity_effect ~ ~ ~ 0.996078431372549 0.9882352941176471 1.0 1 0 force @s

# Blood Calculation
execute if score @s sanguine.blood > @s sanguine.max_blood run function sanguine:entity/player/blood/drain