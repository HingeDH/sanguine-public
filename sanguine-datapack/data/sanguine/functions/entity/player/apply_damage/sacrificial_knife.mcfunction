scoreboard players set #damage sanguine.dummy 30
scoreboard players set #ignore_armor sanguine.dummy 1
tag @s add sanguine.damage.sacrificial_knife
function sanguine:entity/player/damage/calculate
tag @s remove sanguine.damage.sacrificial_knife
particle minecraft:block redstone_block ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force