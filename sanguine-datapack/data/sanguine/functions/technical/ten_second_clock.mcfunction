schedule function sanguine:technical/ten_second_clock 10s replace

execute as @e[type=#sanguine:tick,tag=sanguine.entity] at @s run function sanguine:entity/ten_second_clock
execute as @a at @s run function sanguine:entity/player/ten_second_clock