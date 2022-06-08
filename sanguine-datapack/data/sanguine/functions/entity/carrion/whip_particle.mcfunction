execute unless block ~ ~ ~ #sanguine:rain_blocking if entity @s[distance=..16] positioned ^ ^ ^0.1 unless entity @a[distance=..0.5,gamemode=!creative,gamemode=!spectator] run function sanguine:entity/carrion/whip_particle
execute unless block ~ ~ ~ #sanguine:rain_blocking if entity @s[distance=..16] positioned ^ ^ ^0.1 as @p[distance=..0.5,gamemode=!creative,gamemode=!spectator] run function sanguine:entity/carrion/whip_player

particle dust 0.588 0.165 0.059 1 ~ ~ ~ 0 0 0 0 1 force