############################################################
# Triggers aggression in neutral entities
############################################################

execute if entity @s[type=#sanguine:tameable,tag=!smithed.strict] run function sanguine:entity/technical/damage/set_aggression/determine_pet
execute if entity @s[type=minecraft:wolf] as @e[type=minecraft:wolf,tag=!sanguine.owned_pet,distance=..56,tag=!smithed.strict] run function sanguine:entity/technical/damage/set_aggression/aggro
execute if entity @s[type=minecraft:zombified_piglin] as @e[type=minecraft:zombified_piglin,distance=..17,tag=!smithed.strict] run function sanguine:entity/technical/damage/set_aggression/aggro
execute if entity @s[type=minecraft:iron_golem,nbt=!{PlayerCreated:1b}] run function sanguine:entity/technical/damage/set_aggression/aggro
execute if entity @s[type=minecraft:bee] as @e[type=minecraft:bee,distance=..17,tag=!smithed.strict] run function sanguine:entity/technical/damage/set_aggression/aggro
execute if entity @s[type=minecraft:villager] as @e[type=minecraft:iron_golem,nbt=!{PlayerCreated:1b},distance=..16,tag=!smithed.strict] run function sanguine:entity/technical/damage/set_aggression/aggro
execute if entity @s[type=#sanguine:piglins] as @e[type=minecraft:piglin,distance=..16,tag=!smithed.strict] run function sanguine:entity/technical/damage/set_aggression/brain_aggro
execute if entity @s[type=minecraft:polar_bear,predicate=!sanguine:entity/baby] run function sanguine:entity/technical/damage/set_aggression/aggro
