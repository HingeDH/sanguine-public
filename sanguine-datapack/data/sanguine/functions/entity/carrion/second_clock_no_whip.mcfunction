execute if entity @a[distance=..12,gamemode=!creative,gamemode=!spectator] anchored eyes facing entity @p eyes run function sanguine:entity/carrion/find_player
execute unless entity @a[distance=..16,gamemode=!creative,gamemode=!spectator] run tag @s remove sanguine.carrion.located_player
execute unless entity @a[distance=..16,gamemode=!creative,gamemode=!spectator] if score @s sanguine.dummy matches 10.. run scoreboard players set @s sanguine.dummy 9

execute if entity @s[tag=sanguine.carrion.located_player] if entity @a[distance=..12,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s sanguine.dummy 1
execute if score @s sanguine.dummy matches 1..10 if entity @a[distance=..12,gamemode=!creative,gamemode=!spectator] if predicate sanguine:chance/0.5 run scoreboard players add @s sanguine.dummy 1

execute if score @s sanguine.dummy matches 11.. run function sanguine:entity/carrion/stop
execute unless score @s sanguine.dummy matches 11.. run function sanguine:entity/carrion/go
execute anchored eyes if score @s sanguine.dummy matches 11.. run particle item beef ~ ~0.5 ~ 0.25 0.1 0.25 0 5
execute anchored eyes if score @s sanguine.dummy matches 12 run function sanguine:entity/carrion/timer_up

execute if entity @a[distance=3..32,gamemode=!spectator,gamemode=!creative] run function sanguine:entity/technical/trader_entity/ai/track_nearest_player_survival