scoreboard players operation original_tint sanguine.dummy += hurt_tint sanguine.dummy
scoreboard players operation original_tint sanguine.dummy /= #2 sanguine.dummy
execute store result entity @s HandItems[0].tag.CustomPotionColor int 1 run scoreboard players get original_tint sanguine.dummy
execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get original_tint sanguine.dummy