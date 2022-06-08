execute unless entity @s[tag=sanguine.binding.gory_glory] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"gory_glory"} run function sanguine:item/blood_binding/apply/gory_glory
execute unless entity @s[tag=sanguine.binding.selfish_heart] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"selfish_heart"} run function sanguine:item/blood_binding/apply/selfish_heart
execute unless entity @s[tag=sanguine.binding.scarred_tissue] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"scarred_tissue"} run function sanguine:item/blood_binding/apply/scarred_tissue
execute unless entity @s[tag=sanguine.binding.rebirth] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"rebirth"} run function sanguine:item/blood_binding/apply/rebirth
execute unless entity @s[tag=sanguine.binding.heritage] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"heritage"} run function sanguine:item/blood_binding/apply/heritage
execute unless entity @s[tag=sanguine.binding.blood_barrier] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"blood_barrier"} run function sanguine:item/blood_binding/apply/blood_barrier
execute unless entity @s[tag=sanguine.binding.blister] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"blister"} run function sanguine:item/blood_binding/apply/blister
execute unless entity @s[tag=sanguine.binding.glass_heart] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"glass_heart"} run function sanguine:item/blood_binding/apply/glass_heart
execute unless entity @s[tag=sanguine.binding.blood_deviant] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"blood_deviant"} run function sanguine:item/blood_binding/apply/blood_deviant
execute unless entity @s[tag=sanguine.binding.swift_strike] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"swift_strike"} run function sanguine:item/blood_binding/apply/swift_strike
execute unless entity @s[tag=sanguine.binding.punished_heart] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"punished_heart"} run function sanguine:item/blood_binding/apply/punished_heart
execute unless entity @s[tag=sanguine.binding.chthonic_canny] if data storage sanguine:storage root.temp.item.tag.sanguine{binding:"chthonic_canny"} run function sanguine:item/blood_binding/apply/chthonic_canny

item modify entity @s[tag=sanguine.applied_binding] weapon.mainhand sanguine:reduce_count/1
execute if entity @s[tag=sanguine.applied_binding] as @e[type=wandering_trader,tag=sanguine.effigy.hold] at @s run function sanguine:block/effigy/animate/start
tag @s remove sanguine.applied_binding
tag @e[type=wandering_trader,tag=sanguine.effigy.hold] remove sanguine.effigy.hold