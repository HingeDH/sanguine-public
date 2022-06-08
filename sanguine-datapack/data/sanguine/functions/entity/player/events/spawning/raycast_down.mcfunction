tag @s remove sanguine.spawn_cast_down
tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ #sanguine:spawn_cast_down run tag @s add sanguine.spawn_cast_down
execute at @s if block ~ ~-1 ~ #minecraft:leaves[persistent=false] run tag @s add sanguine.spawn_cast_down
execute if entity @s[tag=sanguine.spawn_cast_down] run function sanguine:entity/player/events/spawning/raycast_down