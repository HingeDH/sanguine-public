scoreboard players operation #sanguine.temp_0 sanguine.dummy = @s sanguine.max_blood
scoreboard players operation #sanguine.temp_0 sanguine.dummy += #1 sanguine.dummy
execute if score @s sanguine.blood <= #sanguine.temp_0 sanguine.dummy run scoreboard players remove @s sanguine.blood 1
execute unless score @s sanguine.blood <= #sanguine.temp_0 sanguine.dummy run scoreboard players remove @s sanguine.blood 2
function sanguine:entity/player/blood/display