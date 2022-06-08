schedule function sanguine:technical/second_clock 1s replace

execute as @e[type=#sanguine:second_clock] at @s run function sanguine:entity/filter_second_clock
execute as @a at @s run function sanguine:entity/player/second_clock

execute if score #sanguine.blood_moon.sound sanguine.dummy matches 1.. run scoreboard players remove #sanguine.blood_moon.sound sanguine.dummy 1