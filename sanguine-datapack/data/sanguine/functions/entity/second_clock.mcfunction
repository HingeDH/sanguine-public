# Templates
execute if entity @s[type=zombie,tag=sanguine.zombie_entity] run function sanguine:entity/technical/zombie_entity/second_clock
execute if entity @s[type=wandering_trader,tag=sanguine.trader_entity] run function sanguine:entity/technical/trader_entity/second_clock

# Additions
execute if entity @s[type=zombie,tag=sanguine.unborn] run function sanguine:entity/unborn/second_clock
execute if entity @s[type=zombie,tag=sanguine.offal] run function sanguine:entity/offal/second_clock
execute if entity @s[type=wandering_trader,tag=sanguine.reaper] run function sanguine:entity/reaper/second_clock
execute if entity @s[type=wandering_trader,tag=sanguine.carrion] run function sanguine:entity/carrion/second_clock
execute if entity @s[type=wandering_trader,tag=sanguine.gurgle] run function sanguine:entity/gurgle/second_clock
execute if entity @s[type=wandering_trader,tag=sanguine.butcher] run function sanguine:entity/butcher/second_clock

# Despawn
execute if entity @s[type=#sanguine:blood_moon_monster,tag=sanguine.blood_moon_monster] unless score #sanguine.blood_moon.phase sanguine.dummy matches 1..2 if predicate sanguine:chance/0.33 unless entity @a[distance=..24] run tp @s ~ -512 ~