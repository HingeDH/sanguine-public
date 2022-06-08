execute store result score #temp_0 sanguine.dummy run difficulty
scoreboard players set #damage sanguine.dummy 50
scoreboard players operation #temp_1 sanguine.dummy = #sanguine.blood_moon.level sanguine.dummy
execute if score #temp_1 sanguine.dummy matches 11.. run scoreboard players set #temp_1 sanguine.dummy 10
scoreboard players operation #temp_1 sanguine.dummy *= #5 sanguine.dummy
scoreboard players operation #damage sanguine.dummy *= #temp_0 sanguine.dummy
scoreboard players operation #damage sanguine.dummy += #temp_1 sanguine.dummy
scoreboard players set #ignore_armor sanguine.dummy 0
tag @s add sanguine.damage.butcher
function sanguine:entity/player/damage/calculate
tag @s remove sanguine.damage.butcher