############################################################
# Checks if a player's UUID matches one in storage
############################################################

scoreboard players set @s sanguine.dummy 1
data modify storage sanguine:storage root.temp.attacker.UUID2 set from storage sanguine:storage root.temp.attacker.UUID
execute store success score @s sanguine.dummy run data modify storage sanguine:storage root.temp.attacker.UUID2 set from entity @s UUID
execute if entity @s[scores={sanguine.dummy=0}] run function sanguine:entity/technical/damage/bad_omen/add_omen
