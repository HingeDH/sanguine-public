data modify storage sanguine:storage root.temp.output_item_temp set from storage sanguine:storage root.temp.output_item
execute store success score @s sanguine.dummy run data modify storage sanguine:storage root.temp.output_item_temp set from entity @s Item
kill @s[scores={sanguine.dummy=0}]
