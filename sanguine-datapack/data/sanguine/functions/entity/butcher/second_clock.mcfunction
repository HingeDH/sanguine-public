# Tracking
execute if entity @a[distance=3..32,gamemode=!spectator,gamemode=!creative] run function sanguine:entity/technical/trader_entity/ai/track_nearest_player_survival
execute if entity @a[distance=..20,gamemode=!spectator,gamemode=!creative] run scoreboard players add @s sanguine.dummy2 1
execute if score @s sanguine.dummy2 matches ..15 if entity @a[distance=3..32,gamemode=!spectator,gamemode=!creative] if predicate sanguine:chance/0.4 run scoreboard players add @s sanguine.dummy2 1
execute if score @s sanguine.dummy2 matches 16 run function sanguine:entity/butcher/begin_charge

# Goring Nearby Players
execute if entity @a[distance=..2.5,gamemode=!spectator,gamemode=!creative] unless entity @s[tag=sanguine.butcher.charge] unless entity @s[tag=sanguine.butcher.charging] unless score @s sanguine.dummy2 matches 13.. run function sanguine:entity/butcher/gore