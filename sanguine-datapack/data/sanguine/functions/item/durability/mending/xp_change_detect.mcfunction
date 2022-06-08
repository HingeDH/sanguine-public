############################################################
# Tests if your XP level was changed by an XP orb
############################################################

# Calculations for if your xp level changed or not
scoreboard players operation @s sanguine.old_xp -= @s sanguine.current_xp
tag @s remove sanguine.saw_xp_orb
execute if score @s sanguine.old_xp matches ..-1 run function sanguine:item/durability/mending/repair_priority_list
scoreboard players reset @s sanguine.old_xp
