data remove storage sanguine:storage root.temp
data modify storage sanguine:storage root.temp.Items set value []

data modify storage sanguine:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:10b}]
data modify storage sanguine:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:3b}]
data modify storage sanguine:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:4b}]
data modify storage sanguine:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:5b}]
execute if entity @s[tag=sanguine.credence.assembled_output] run data modify storage sanguine:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:22b}]

data remove block ~ ~ ~ Items[{Slot:10b}]
data remove block ~ ~ ~ Items[{Slot:3b}]
data remove block ~ ~ ~ Items[{Slot:4b}]
data remove block ~ ~ ~ Items[{Slot:5b}]
execute if entity @s[tag=sanguine.credence.assembled_output] run data remove block ~ ~ ~ Items[{Slot:22b}]

data modify storage sanguine:storage root.temp.export_items set from block ~ ~ ~ Items
execute store result score @s sanguine.dummy run data get block ~ ~ ~ Items


# Spawns the items on the nearest player that opened the table's gui
execute if data storage sanguine:storage root.temp.export_items[{}] run function sanguine:block/credence/crafting/manage_invalids/spawn_loop
data modify block ~ ~ ~ Items set from storage sanguine:storage root.temp.Items
