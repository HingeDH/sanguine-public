scoreboard players reset @s sanguine.dummy
particle dust 0.557 0.580 0.239 1 ~ ~ ~ 1 0.5 1 0 10 normal
summon area_effect_cloud ~ ~ ~ {ReapplicationDelay:10,Radius:4f,RadiusPerTick:-0.02f,Duration:200,Color:9344061,Effects:[{Id:19b,Amplifier:0b,Duration:300,ShowParticles:1b}]}
playsound sanguine:entity.gurgle.explode hostile @a
execute as @a[distance=..3.5,gamemode=!creative,gamemode=!spectator] run function sanguine:entity/player/apply_damage/gurgle
kill @s