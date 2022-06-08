execute if predicate sanguine:chance/0.25 run particle minecraft:campfire_cosy_smoke ~ ~0.25 ~ 0.5 0.5 0.5 0 1
scoreboard players remove @s sanguine.dummy 1
tp @s ^ ^ ^1 facing entity @p[gamemode=!spectator,gamemode=!creative]
execute at @s if block ~ ~-1 ~ #sanguine:spawn_cast_down run tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ snow[layers=1] run tp @s ~ ~-1 ~
execute at @s unless block ~ ~ ~ #sanguine:non_solid if block ~ ~1 ~ #sanguine:non_solid run tp @s ~ ~1 ~

execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #sanguine:rain_blocking if block ~ ~1 ~ #sanguine:rain_blocking run function sanguine:entity/butcher/destroy_block
execute at @s if entity @a[distance=..1.5,gamemode=!spectator,gamemode=!creative] run function sanguine:entity/butcher/charge_end
execute at @s unless entity @a[distance=..1.5,gamemode=!spectator,gamemode=!creative] if block ^ ^ ^1 #sanguine:butcher_cannot_break run function sanguine:entity/butcher/charge_end