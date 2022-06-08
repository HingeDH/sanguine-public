############################################################
# Checks if an entity is tamed by the player
############################################################

data modify storage sanguine:storage root.temp.UUID set from storage sanguine:storage root.temp.attacker.UUID
execute store success score #temp_0 sanguine.dummy run data modify storage sanguine:storage root.temp.UUID set from entity @s Owner
execute unless score #temp_0 sanguine.dummy matches 0 run tag @s add sanguine.owned_pet
scoreboard players reset #temp_0 sanguine.dummy
