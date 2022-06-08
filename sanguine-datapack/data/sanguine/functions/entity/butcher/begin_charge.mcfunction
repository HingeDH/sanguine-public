tag @s add sanguine.butcher.charging
scoreboard players set @s sanguine.dummy 61
attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2-0 sanguine.movement_speed -100 add
tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,gamemode=!creative]

attribute @s minecraft:generic.knockback_resistance modifier add 8-3-6-2-0 sanguine.knockback_resistance 100 add
attribute @s minecraft:generic.armor modifier add 8-3-6-2-0 sanguine.armor 10 add
data modify entity @s NoAI set value 1b

scoreboard players set @s sanguine.dummy2 11
playsound sanguine:entity.butcher.charge_start hostile @a