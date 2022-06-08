############################################################
# Damages a player for one heart
############################################################

attribute @s[scores={sanguine.dummy=128..}] minecraft:generic.max_health modifier add 2-0-3-3-7 "damage_128" -12.8 add
scoreboard players remove @s[scores={sanguine.dummy=128..}] sanguine.dummy 128
attribute @s[scores={sanguine.dummy=64..}] minecraft:generic.max_health modifier add 2-0-3-3-6 "damage_64" -6.4 add
scoreboard players remove @s[scores={sanguine.dummy=64..}] sanguine.dummy 64
attribute @s[scores={sanguine.dummy=32..}] minecraft:generic.max_health modifier add 2-0-3-3-5 "damage_32" -3.2 add
scoreboard players remove @s[scores={sanguine.dummy=32..}] sanguine.dummy 32
attribute @s[scores={sanguine.dummy=16..}] minecraft:generic.max_health modifier add 2-0-3-3-4 "damage_16" -1.6 add
scoreboard players remove @s[scores={sanguine.dummy=16..}] sanguine.dummy 16
attribute @s[scores={sanguine.dummy=8..}] minecraft:generic.max_health modifier add 2-0-3-3-3 "damage_8" -0.8 add
scoreboard players remove @s[scores={sanguine.dummy=8..}] sanguine.dummy 8
attribute @s[scores={sanguine.dummy=4..}] minecraft:generic.max_health modifier add 2-0-3-3-2 "damage_4" -0.4 add
scoreboard players remove @s[scores={sanguine.dummy=4..}] sanguine.dummy 4
attribute @s[scores={sanguine.dummy=2..}] minecraft:generic.max_health modifier add 2-0-3-3-1 "damage_2" -0.2 add
scoreboard players remove @s[scores={sanguine.dummy=2..}] sanguine.dummy 2
attribute @s[scores={sanguine.dummy=1..}] minecraft:generic.max_health modifier add 2-0-3-3-0 "damage_1" -0.1 add
scoreboard players remove @s[scores={sanguine.dummy=1..}] sanguine.dummy 1
scoreboard players set @s sanguine.dummy 0
effect give @s instant_health 1 24 true
tag @s add sanguine.scheduled.remove_attributes
schedule function sanguine:entity/player/damage/remove_attributes/scheduled 2t replace
execute if score #damage sanguine.dummy matches 1.. run playsound minecraft:entity.player.hurt player @a[distance=..16]