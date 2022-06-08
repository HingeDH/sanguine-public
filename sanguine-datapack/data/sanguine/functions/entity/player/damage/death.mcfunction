############################################################
# Kills the player if their health is too low
############################################################

tag @s add sanguine.dead
tag @s remove sanguine.tag
tag @s[predicate=sanguine:entity/holding/totem_of_undying] add sanguine.tag
scoreboard players reset @s sanguine.dummy
execute store result score @s sanguine.dummy run gamerule showDeathMessages
execute if entity @s[tag=!sanguine.tag,scores={sanguine.dummy=1}] run gamerule showDeathMessages false
effect give @s[tag=sanguine.tag] instant_damage 1 100 true
kill @s[tag=!sanguine.tag]
execute if entity @s[tag=!sanguine.tag,scores={sanguine.dummy=1},tag=sanguine.damage.template] run tellraw @a {"translate":"death.sanguine.template","with":[{"selector":"@s"}]}
execute if entity @s[tag=!sanguine.tag,scores={sanguine.dummy=1},tag=sanguine.damage.unborn] run tellraw @a {"translate":"death.sanguine.unborn","with":[{"selector":"@s"}]}
execute if entity @s[tag=!sanguine.tag,scores={sanguine.dummy=1},tag=sanguine.damage.gurgle] run tellraw @a {"translate":"death.sanguine.gurgle","with":[{"selector":"@s"}]}
execute if entity @s[tag=!sanguine.tag,scores={sanguine.dummy=1},tag=sanguine.damage.butcher] run tellraw @a {"translate":"death.sanguine.butcher","with":[{"selector":"@s"}]}
execute if entity @s[tag=!sanguine.tag,scores={sanguine.dummy=1},tag=sanguine.damage.sacrificial_knife] run tellraw @a {"translate":"death.sanguine.sacrificial_knife","with":[{"selector":"@s"}]}
execute if entity @s[tag=!sanguine.tag,scores={sanguine.dummy=1},tag=sanguine.damage.butcher_skull] run tellraw @a {"translate":"death.sanguine.butcher_skull","with":[{"selector":"@s"},{"selector":"@p[tag=sanguine.butcher_skull_damager]"}]}

execute if entity @s[tag=!sanguine.tag,scores={sanguine.dummy=1}] run gamerule showDeathMessages true
tag @s remove sanguine.tag
