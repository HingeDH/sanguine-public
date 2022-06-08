############################################################
# Calculates resistance into the damage formula
############################################################

# Get the amplifier
execute store result score #temp_0 sanguine.dummy run data get entity @s ActiveEffects[{Id:11b}].Amplifier
scoreboard players add #temp_0 sanguine.dummy 1


# Subtract the amplifier from 5 to get the proper fraction (for example, 4 -> 1, or 1/5 damage amount)
scoreboard players set #temp_1 sanguine.dummy 5
scoreboard players operation #temp_1 sanguine.dummy -= #temp_0 sanguine.dummy

scoreboard players operation #damage sanguine.dummy *= #temp_1 sanguine.dummy
scoreboard players operation #damage sanguine.dummy /= #5 sanguine.dummy
