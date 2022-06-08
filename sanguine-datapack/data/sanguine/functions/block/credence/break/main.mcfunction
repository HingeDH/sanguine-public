# Delete Output
data modify storage sanguine:storage root.temp.output_item set from entity @s ArmorItems[3].tag.sanguine.stored_barrel_data[1][{Slot:22b}]
data remove storage sanguine:storage root.temp.output_item.Slot
execute if data entity @s ArmorItems[3].tag.sanguine.stored_barrel_data[1][{Slot:4b}].id as @e[type=item,sort=nearest,distance=..2,tag=!smithed.entity] run function sanguine:block/credence/break/delete_output

# Spawn particles, items, etc.
execute store success score #temp_0 sanguine.dummy run kill @e[type=item,tag=!smithed.entity,limit=1,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:barrel",Count:1b,tag:{display:{Name:'{"color":"white","font":"sanguine:credence","translate":"block.sanguine.credence.gui","with":[{"color":"#3F3F3F","font":"minecraft:default","translate":"block.sanguine.credence"}]}'}}}}]
execute if score #temp_0 sanguine.dummy matches 1.. run loot spawn ~ ~ ~ loot sanguine:items/credence
particle minecraft:item barrel{CustomModelData:8361000} ~ ~ ~ 0.5 0.6 0.5 0.05 100 normal
kill @s
function sanguine:block/hopper_updating/undo

clear @a structure_block{sanguine:{id:"blood_drop"}}
kill @e[type=item,nbt={Item:{id:"minecraft:structure_block",Count:1b,tag:{sanguine:{id:"blood_drop"}}}}]