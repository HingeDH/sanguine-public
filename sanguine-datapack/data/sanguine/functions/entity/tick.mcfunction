# Templates
execute if entity @s[type=zombie,tag=sanguine.zombie_entity] run function sanguine:entity/technical/zombie_entity/tick
execute if entity @s[type=wandering_trader,tag=sanguine.trader_entity] run function sanguine:entity/technical/trader_entity/tick
execute if entity @s[type=armor_stand,tag=sanguine.block] run function sanguine:block/tick

# Additions
execute if entity @s[type=zombie,tag=sanguine.unborn] run function sanguine:entity/unborn/tick
execute if entity @s[type=zombie,tag=sanguine.offal] run function sanguine:entity/offal/tick
execute if entity @s[type=wandering_trader,tag=sanguine.reaper] run function sanguine:entity/reaper/tick
execute if entity @s[type=wandering_trader,tag=sanguine.carrion] run function sanguine:entity/carrion/tick
execute if entity @s[type=wandering_trader,tag=sanguine.gurgle] run function sanguine:entity/gurgle/tick
execute if entity @s[type=armor_stand,tag=sanguine.gurgle_spit] run function sanguine:entity/gurgle/spit/tick
execute if entity @s[type=wandering_trader,tag=sanguine.butcher] run function sanguine:entity/butcher/tick
execute if entity @s[type=wandering_trader,tag=sanguine.effigy] run function sanguine:block/effigy/tick
