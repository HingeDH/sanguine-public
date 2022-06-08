execute store result score #temp_0 sanguine.dummy run difficulty
scoreboard players set #damage sanguine.dummy 15
scoreboard players operation #damage sanguine.dummy *= #temp_0 sanguine.dummy
scoreboard players set #ignore_armor sanguine.dummy 1
tag @s add sanguine.damage.unborn
function sanguine:entity/player/damage/calculate
tag @s remove sanguine.damage.unborn

particle block redstone_block ~ ~0.5 ~ 0.5 0.5 0.5 0 10
item modify entity @s armor.head sanguine:set_damage/unborn
item modify entity @s armor.chest sanguine:set_damage/unborn
item modify entity @s armor.legs sanguine:set_damage/unborn
item modify entity @s armor.feet sanguine:set_damage/unborn