execute if entity @a[distance=..20,gamemode=!creative,gamemode=!spectator] unless score @s sanguine.dummy matches 8.. run scoreboard players add @s sanguine.dummy 1
execute if entity @a[distance=..20,gamemode=!creative,gamemode=!spectator] if predicate sanguine:chance/0.33 unless score @s sanguine.dummy matches 8.. run scoreboard players add @s sanguine.dummy 1
execute if score @s sanguine.dummy matches 8.. run scoreboard players add @s sanguine.dummy 1

execute if score @s sanguine.dummy matches 9 run function sanguine:entity/gurgle/pause
execute if score @s sanguine.dummy matches 10.. run function sanguine:entity/gurgle/spit

execute if entity @a[distance=3..32,gamemode=!spectator,gamemode=!creative] run function sanguine:entity/technical/trader_entity/ai/track_nearest_player_survival