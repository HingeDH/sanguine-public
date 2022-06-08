# Move the item slots around
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot:0b}]
execute unless block ~ ~ ~ barrel{Items:[{Slot:3b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 3b
execute unless block ~ ~ ~ barrel{Items:[{Slot:4b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 4b
execute unless block ~ ~ ~ barrel{Items:[{Slot:5b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 5b

data remove entity @s HandItems[0]

# If things are still invalid, just throw them out instead
execute if entity @s[predicate=sanguine:block/credence/has_invalid_items] run function sanguine:block/credence/crafting/manage_invalids/export

# Make sure the storage is updated properly
data modify storage sanguine:storage root.temp.barrel_data[1] set from block ~ ~ ~ Items
