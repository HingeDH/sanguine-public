############################################################
# Calculates the damage a player has to have
############################################################

execute store result score @s sanguine.dummy run attribute @s minecraft:generic.max_health get 10
execute store result score @s sanguine.dummy2 run data get entity @s Health 10
execute if score #damage sanguine.dummy >= @s sanguine.dummy2 run function sanguine:entity/player/damage/death
scoreboard players operation @s sanguine.dummy -= @s sanguine.dummy2
scoreboard players operation @s sanguine.dummy += #damage sanguine.dummy
