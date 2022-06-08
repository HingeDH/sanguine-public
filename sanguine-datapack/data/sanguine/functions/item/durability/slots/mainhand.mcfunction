############################################################
# Functions to modify the durability of a specific item in a slot
############################################################

# Set storage stuff
data remove storage sanguine:storage root.temp
data modify storage sanguine:storage root.temp.item set from entity @s SelectedItem

# Sets the item's data in storage
function sanguine:item/durability/modify/main
execute unless data storage sanguine:storage root.temp.item run item replace entity @s weapon.mainhand with air
item modify entity @s weapon.mainhand sanguine:durability_lore
data modify storage sanguine:storage root.temp.item set from entity @s SelectedItem
data modify storage sanguine:storage root.temp.item.tag.display.Lore[0] set from storage sanguine:storage root.temp.item.tag.display.Lore[-1]
data remove storage sanguine:storage root.temp.item.tag.display.Lore[-1]
item modify entity @s weapon.mainhand sanguine:copy_nbt
