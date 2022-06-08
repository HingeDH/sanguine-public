############################################################
# Repairs items in the proper order as intended
############################################################

# Set proper values for the amount that the item should be repaired
scoreboard players set #item_durability_change sanguine.dummy 2
scoreboard players operation #item_durability_change sanguine.dummy *= @s sanguine.old_xp

# Repair items in the proper order
execute if entity @s[predicate=sanguine:entity/holding/mending_item/mainhand] run function sanguine:item/durability/slots/mainhand
execute if entity @s[predicate=!sanguine:entity/holding/mending_item/mainhand,predicate=sanguine:entity/holding/mending_item/offhand] run function sanguine:item/durability/slots/offhand
execute if entity @s[predicate=!sanguine:entity/holding/mending_item/mainhand,predicate=!sanguine:entity/holding/mending_item/offhand,predicate=sanguine:entity/holding/mending_item/head] run function sanguine:item/durability/slots/head

# Subtract xp based on how much you used
scoreboard players operation #item_durability_change sanguine.dummy /= #2 sanguine.dummy
function sanguine:item/durability/mending/xp_subtraction_loop
