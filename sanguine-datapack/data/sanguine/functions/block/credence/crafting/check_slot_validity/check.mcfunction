data remove entity @s HandItems[0]
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot:10b}]
execute unless predicate sanguine:block/credence/blood run function sanguine:block/credence/crafting/check_slot_validity/export
data remove entity @s HandItems[0]
