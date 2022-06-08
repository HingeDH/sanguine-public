particle item structure_block{CustomModelData:8361001} ~ ~1.5 ~ 0.35 0.1 0.35 0 5
tp @s ~ ~ ~ facing entity @p[distance=..10,gamemode=!creative,gamemode=!spectator]
execute if entity @a[distance=..10,gamemode=!creative,gamemode=!spectator] positioned ~ ~1 ~ facing entity @p[gamemode=!creative,gamemode=!spectator] feet run function sanguine:entity/carrion/whip_particle
execute unless entity @a[distance=..10,gamemode=!creative,gamemode=!spectator] run function sanguine:entity/carrion/whip_end

scoreboard players add @s sanguine.dummy2 1
execute if score @s sanguine.dummy2 matches 100.. run function sanguine:entity/carrion/whip_end