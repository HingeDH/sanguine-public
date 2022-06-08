scoreboard players reset #sanguine.carrion_spawn sanguine.dummy
execute as @e[type=#sanguine:carrion_spawn,tag=sanguine.carrion_summon,distance=..12] run scoreboard players add #sanguine.carrion_spawn sanguine.dummy 1

execute if score #sanguine.carrion_spawn sanguine.dummy matches 5.. run tag @s add sanguine.carrion.flesh_hook
execute if predicate sanguine:chance/0.33 run tag @s add sanguine.carrion.flesh_hook
execute if entity @s[tag=sanguine.carrion.flesh_hook] run playsound sanguine:entity.carrion.whip hostile @a
execute unless entity @s[tag=sanguine.carrion.flesh_hook] run function sanguine:entity/carrion/spawn