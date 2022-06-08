execute if entity @s[tag=sanguine.binding.gory_glory] run attribute @s minecraft:generic.max_health modifier add 8-3-6-2-1540 sanguine.max_health -2 add
execute if entity @s[tag=sanguine.binding.selfish_heart] run attribute @s minecraft:generic.max_health modifier add 8-3-6-2-1541 sanguine.max_health -2 add
execute if entity @s[tag=sanguine.binding.scarred_tissue] run attribute @s minecraft:generic.max_health modifier add 8-3-6-2-1542 sanguine.max_health -2 add
execute if entity @s[tag=sanguine.binding.rebirth] run attribute @s minecraft:generic.max_health modifier add 8-3-6-2-1543 sanguine.max_health -2 add
execute if entity @s[tag=sanguine.binding.blood_barrier] run attribute @s minecraft:generic.max_health modifier add 8-3-6-2-1544 sanguine.max_health -2 add
execute if entity @s[tag=sanguine.binding.blister] run attribute @s minecraft:generic.max_health modifier add 8-3-6-2-1545 sanguine.max_health -2 add
execute if entity @s[tag=sanguine.binding.glass_heart] run attribute @s minecraft:generic.max_health modifier add 8-3-6-2-1546 sanguine.max_health -2 add
execute if entity @s[tag=sanguine.binding.blood_deviant] run attribute @s minecraft:generic.max_health modifier add 8-3-6-2-1547 sanguine.max_health -2 add
execute if entity @s[tag=sanguine.binding.swift_strike] run attribute @s minecraft:generic.max_health modifier add 8-3-6-2-1548 sanguine.max_health -2 add
execute if entity @s[tag=sanguine.binding.punished_heart] run attribute @s minecraft:generic.max_health modifier add 8-3-6-2-1549 sanguine.max_health -2 add
execute if entity @s[tag=sanguine.binding.chthonic_canny] run attribute @s minecraft:generic.max_health modifier add 8-3-6-2-1550 sanguine.max_health -2 add

effect give @s instant_health 1 30 true
effect give @s instant_damage 1 30 true

tag @s remove sanguine.binding.heritage
scoreboard players remove @s sanguine.bindings 1