execute store result score #temp_0 sanguine.dummy run difficulty
scoreboard players set #damage sanguine.dummy 15
scoreboard players operation #damage sanguine.dummy *= #temp_0 sanguine.dummy
scoreboard players set #ignore_armor sanguine.dummy 1
tag @s add sanguine.damage.template
function sanguine:entity/player/damage/calculate
tag @s remove sanguine.damage.template