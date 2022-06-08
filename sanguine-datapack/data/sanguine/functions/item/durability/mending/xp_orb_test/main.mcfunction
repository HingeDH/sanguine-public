############################################################
# Detects XP orbs near you
############################################################

execute if entity @e[distance=..3,type=experience_orb,tag=!smithed.entity] run tag @s add sanguine.tag
execute if entity @s[tag=!sanguine.saw_xp_orb,tag=sanguine.tag] run function sanguine:item/durability/mending/xp_orb_test/set_tags
execute if entity @s[tag=sanguine.saw_xp_orb,tag=!sanguine.tag] run function sanguine:item/durability/mending/xp_change_detect
tag @s remove sanguine.tag
