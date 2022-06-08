############################################################
# Modifies the data of the item
############################################################

# Set the durability tag
execute store result storage sanguine:storage root.temp.item.tag.sanguine.durability[0] int 1 run scoreboard players get @s sanguine.dummy

# Set repaired tag if the max and current durabilities are the same
execute store result score @s sanguine.dummy2 run data get storage sanguine:storage root.temp.item.tag.sanguine.durability[1] 1
data modify storage sanguine:storage root.temp.item.tag.sanguine.repaired set value 0b
execute if score @s sanguine.dummy = @s sanguine.dummy2 run data modify storage sanguine:storage root.temp.item.tag.sanguine.repaired set value 1b
