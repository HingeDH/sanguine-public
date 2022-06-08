execute if predicate sanguine:location/range/over_256 run spreadplayers ~ ~ 1 48 false @s
execute if predicate sanguine:location/range/192_to_256 run spreadplayers ~ ~ 1 48 under 255 false @s
execute if predicate sanguine:location/range/128_to_192 run spreadplayers ~ ~ 1 48 under 191 false @s
execute if predicate sanguine:location/range/96_to_128 run spreadplayers ~ ~ 1 48 under 127 false @s
execute if predicate sanguine:location/range/64_to_96 run spreadplayers ~ ~ 1 48 under 97 false @s
execute if predicate sanguine:location/range/32_to_64 run spreadplayers ~ ~ 1 48 under 65 false @s
execute if predicate sanguine:location/range/0_to_32 run spreadplayers ~ ~ 1 32 under 33 false @s
execute if predicate sanguine:location/range/-32_to_0 run spreadplayers ~ ~ 1 32 under 0 false @s
execute if predicate sanguine:location/range/-64_to_-32 run spreadplayers ~ ~ 1 32 under -31 false @s

execute at @s if block ~ ~-1 ~ #sanguine:spawn_cast_down run tag @s add sanguine.spawn_cast_down
execute at @s if block ~ ~-1 ~ #minecraft:leaves[persistent=false] run tag @s add sanguine.spawn_cast_down
execute if entity @s[tag=sanguine.spawn_cast_down] run function sanguine:entity/player/events/spawning/raycast_down