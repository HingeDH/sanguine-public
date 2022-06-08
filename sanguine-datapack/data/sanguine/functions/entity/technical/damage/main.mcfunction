############################################################
# Commands to damage an entity for 1 heart
############################################################

# Visual damage effect
effect give @s[type=#sanguine:undead] instant_health 1 31
effect give @s[type=!#sanguine:undead] instant_damage 1 31
data merge entity @s {HurtTime:10s}

# Edit health
execute store result score @s sanguine.dummy run data get entity @s Health 10
scoreboard players operation @s sanguine.dummy -= #sanguine.damage_temp sanguine.dummy
execute store result entity @s[scores={sanguine.dummy=1..}] Health float 0.1 run scoreboard players get @s sanguine.dummy

# Kill the entity, if it's a raider with a banner, give the player bad omen.
kill @s[scores={sanguine.dummy=..0}]
execute if entity @s[scores={sanguine.dummy=..0},type=#minecraft:raiders,nbt={ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}]}] unless data entity @s RaidId as @a[gamemode=!spectator,nbt=!{Health:0.0f}] run function sanguine:entity/technical/damage/bad_omen/select_player

# Additional effects if the mob can trigger aggression anywhere
execute if entity @s[type=#sanguine:aggression] run function sanguine:entity/technical/damage/set_aggression/main
execute if entity @s[tag=sanguine.carrion] if score @s sanguine.dummy matches ..8 run scoreboard players add @s sanguine.dummy 3
execute if entity @s[tag=sanguine.gurgle] if score @s sanguine.dummy matches ..5 run scoreboard players add @s sanguine.dummy 3

# Reset
scoreboard players reset @s sanguine.dummy
