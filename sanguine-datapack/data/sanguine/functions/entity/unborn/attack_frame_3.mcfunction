data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361003
data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.moving set value 8361003
playsound sanguine:entity.unborn.bite hostile @a
execute anchored eyes positioned ^ ^ ^1 positioned ~ ~-0.5 ~ as @a[gamemode=!creative,gamemode=!spectator,distance=..2.25] at @s run function sanguine:entity/player/apply_damage/unborn
execute anchored eyes positioned ^ ^ ^1 run particle crit ~ ~-0.5 ~ 0.5 0.5 0.5 0 8