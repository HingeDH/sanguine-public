playsound sanguine:ambient.blood_moon.loop ambient @s ~ ~ ~ 0.35

scoreboard players reset #sanguine.temp_0 sanguine.dummy
execute as @e[tag=sanguine.blood_moon_monster,distance=..64] run scoreboard players add #sanguine.temp_0 sanguine.dummy 1

execute if score #sanguine.blood_moon.level sanguine.dummy matches 1 unless score #sanguine.temp_0 sanguine.dummy matches 2.. if predicate sanguine:chance/0.06 run function sanguine:entity/player/events/spawning/create_markers
execute if score #sanguine.blood_moon.level sanguine.dummy matches 2 unless score #sanguine.temp_0 sanguine.dummy matches 4.. if predicate sanguine:chance/0.06 run function sanguine:entity/player/events/spawning/create_markers
execute if score #sanguine.blood_moon.level sanguine.dummy matches 3 unless score #sanguine.temp_0 sanguine.dummy matches 6.. if predicate sanguine:chance/0.06 run function sanguine:entity/player/events/spawning/create_markers
execute if score #sanguine.blood_moon.level sanguine.dummy matches 4 unless score #sanguine.temp_0 sanguine.dummy matches 8.. if predicate sanguine:chance/0.08 run function sanguine:entity/player/events/spawning/create_markers
execute if score #sanguine.blood_moon.level sanguine.dummy matches 5 unless score #sanguine.temp_0 sanguine.dummy matches 10.. if predicate sanguine:chance/0.08 run function sanguine:entity/player/events/spawning/create_markers
execute if score #sanguine.blood_moon.level sanguine.dummy matches 6 unless score #sanguine.temp_0 sanguine.dummy matches 12.. if predicate sanguine:chance/0.08 run function sanguine:entity/player/events/spawning/create_markers
execute if score #sanguine.blood_moon.level sanguine.dummy matches 7 unless score #sanguine.temp_0 sanguine.dummy matches 14.. if predicate sanguine:chance/0.1 run function sanguine:entity/player/events/spawning/create_markers
execute if score #sanguine.blood_moon.level sanguine.dummy matches 8 unless score #sanguine.temp_0 sanguine.dummy matches 16.. if predicate sanguine:chance/0.1 run function sanguine:entity/player/events/spawning/create_markers
execute if score #sanguine.blood_moon.level sanguine.dummy matches 9 unless score #sanguine.temp_0 sanguine.dummy matches 18.. if predicate sanguine:chance/0.15 run function sanguine:entity/player/events/spawning/create_markers
execute if score #sanguine.blood_moon.level sanguine.dummy matches 10.. unless score #sanguine.temp_0 sanguine.dummy matches 20.. if predicate sanguine:chance/0.15 run function sanguine:entity/player/events/spawning/create_markers