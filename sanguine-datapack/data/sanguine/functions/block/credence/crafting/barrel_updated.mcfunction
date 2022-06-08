# Move the barrel data
data remove storage sanguine:storage root.temp
data modify storage sanguine:storage root.temp.barrel_data set from entity @s ArmorItems[3].tag.sanguine.stored_barrel_data

# Clearing the input
data modify storage sanguine:storage root.temp.barrel_data_output set from storage sanguine:storage root.temp.barrel_data[0][{Slot:22b}]
execute store success score @s sanguine.dummy run data modify storage sanguine:storage root.temp.barrel_data_output set from block ~ ~ ~ Items[{Slot:22b}]
execute unless data block ~ ~ ~ Items[{Slot:22b}] run scoreboard players set @s sanguine.dummy 1
execute if entity @s[scores={sanguine.dummy=1..},tag=sanguine.credence.assembled_output,tag=sanguine.credence.open] run function sanguine:block/credence/crafting/clear_input

# If there are any items in improper slots, manage them
execute if entity @s[predicate=sanguine:block/credence/has_invalid_items] run function sanguine:block/credence/crafting/manage_invalids/move

# Check slot 10
function sanguine:block/credence/crafting/check_slot_validity/check

# Recipe checks
execute if data storage sanguine:storage root.temp.barrel_data[1][{}] run data remove block ~ ~ ~ Items[{Slot:22b}]
execute if data storage sanguine:storage root.temp.barrel_data[1][{}] run tag @s remove sanguine.credence.assembled_output

# Store Recipes
data remove storage sanguine:storage root.credence.slot.3
data remove storage sanguine:storage root.credence.slot.4
data remove storage sanguine:storage root.credence.slot.5
data modify storage sanguine:storage root.credence.slot.3 set from block ~ ~ ~ Items[{Slot:3b}]
data modify storage sanguine:storage root.credence.slot.4 set from block ~ ~ ~ Items[{Slot:4b}]
data modify storage sanguine:storage root.credence.slot.5 set from block ~ ~ ~ Items[{Slot:5b}]

# Recipes
function sanguine:block/credence/crafting/recipes/clear
function sanguine:block/credence/crafting/remove_blood_tags

execute if data storage sanguine:storage root.credence.slot.3{id:"minecraft:structure_block",tag:{sanguine:{id:"bloody_fragment"}}} if data storage sanguine:storage root.credence.slot.4{id:"minecraft:iron_ingot"} if data storage sanguine:storage root.credence.slot.5{id:"minecraft:iron_ingot"} run function sanguine:block/credence/crafting/recipes/sacrificial_knife
execute if data storage sanguine:storage root.credence.slot.3{id:"minecraft:iron_ingot"} if data storage sanguine:storage root.credence.slot.4{id:"minecraft:structure_block",tag:{sanguine:{id:"amalgamate_flesh"}}} if data storage sanguine:storage root.credence.slot.5{id:"minecraft:iron_ingot"} run function sanguine:block/credence/crafting/recipes/sanguine_chalice
execute if data storage sanguine:storage root.credence.slot.3{id:"minecraft:iron_ingot"} if data storage sanguine:storage root.credence.slot.4{id:"minecraft:iron_ingot"} if data storage sanguine:storage root.credence.slot.5{id:"minecraft:structure_block",tag:{sanguine:{id:"amalgamate_flesh"}}} run function sanguine:block/credence/crafting/recipes/blood_oath
execute if score @s sanguine.blood matches 10.. if data storage sanguine:storage root.credence.slot.3{id:"minecraft:structure_block",tag:{sanguine:{id:"bloody_fragment"}}} if data storage sanguine:storage root.credence.slot.4{id:"minecraft:structure_block",tag:{sanguine:{id:"amalgamate_flesh"}}} if data storage sanguine:storage root.credence.slot.5{id:"minecraft:bone_block"} run function sanguine:block/credence/crafting/recipes/effigy
execute if score @s sanguine.blood matches 20.. if data storage sanguine:storage root.credence.slot.3{id:"minecraft:gold_ingot"} if data storage sanguine:storage root.credence.slot.4{id:"minecraft:structure_block",tag:{sanguine:{id:"binding_veins"}}} if data storage sanguine:storage root.credence.slot.5{id:"minecraft:gold_ingot"} run function sanguine:block/credence/crafting/recipes/blood_binding

# Set the tags at the end
data modify entity @s ArmorItems[3].tag.sanguine.stored_barrel_data[1] set from block ~ ~ ~ Items