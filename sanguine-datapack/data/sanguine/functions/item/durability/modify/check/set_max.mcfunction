############################################################
# Prevents an overflow past the maximum durability value
############################################################

execute store result score #temp_0 sanguine.dummy run data get storage sanguine:storage root.temp.item.tag.sanguine.durability[0] 1
execute store result score #temp_1 sanguine.dummy run data get storage sanguine:storage root.temp.item.tag.sanguine.durability[1] 1
scoreboard players operation #temp_0 sanguine.dummy -= #temp_1 sanguine.dummy
execute if score #item_durability_change sanguine.dummy < #temp_0 sanguine.dummy run scoreboard players operation #item_durability_change sanguine.dummy = #temp_0 sanguine.dummy
