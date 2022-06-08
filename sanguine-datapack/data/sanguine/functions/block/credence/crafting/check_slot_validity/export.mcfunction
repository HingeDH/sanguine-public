data modify storage sanguine:storage root.temp.export_items set value [{}]
scoreboard players set @s sanguine.dummy 1
data modify storage sanguine:storage root.temp.export_items[0] set from block ~ ~ ~ Items[{Slot:10b}]
data remove block ~ ~ ~ Items[{Slot:10b}]
data modify storage sanguine:storage root.temp.barrel_data[1] set from block ~ ~ ~ Items
function sanguine:block/credence/crafting/manage_invalids/spawn_loop

clear @a structure_block{sanguine:{id:"blood_drop"}}
kill @e[type=item,nbt={Item:{id:"minecraft:structure_block",Count:1b,tag:{sanguine:{id:"blood_drop"}}}}]
function sanguine:block/credence/crafting/update_blood