execute if entity @a[distance=..6,gamemode=!creative,gamemode=!spectator] run playsound sanguine:entity.reaper.prime hostile @a
execute unless entity @a[distance=..6,gamemode=!creative,gamemode=!spectator] if score @s sanguine.dummy matches 400.. run playsound sanguine:entity.reaper.prime hostile @a

tag @s add sanguine.reaper.primed
attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2-0 sanguine.movement_speed -100 add
attribute @s minecraft:generic.knockback_resistance modifier add 8-3-6-2-0 sanguine.knockback_resistance 100 add