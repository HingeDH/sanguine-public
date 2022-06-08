scoreboard players set #damage sanguine.dummy 320
scoreboard players set #ignore_armor sanguine.dummy 0
tag @s add sanguine.damage.butcher_skull
function sanguine:entity/player/damage/calculate
tag @s remove sanguine.damage.butcher_skull