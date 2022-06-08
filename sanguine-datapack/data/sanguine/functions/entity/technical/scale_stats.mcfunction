tag @s add sanguine.modified
tag @s add sanguine.blood_moon_monster

execute if score #sanguine.blood_moon.level sanguine.dummy matches 1 run function sanguine:entity/technical/scale_stats/1
execute if score #sanguine.blood_moon.level sanguine.dummy matches 2 run function sanguine:entity/technical/scale_stats/2
execute if score #sanguine.blood_moon.level sanguine.dummy matches 3 run function sanguine:entity/technical/scale_stats/3
execute if score #sanguine.blood_moon.level sanguine.dummy matches 4 run function sanguine:entity/technical/scale_stats/4
execute if score #sanguine.blood_moon.level sanguine.dummy matches 5 run function sanguine:entity/technical/scale_stats/5
execute if score #sanguine.blood_moon.level sanguine.dummy matches 6 run function sanguine:entity/technical/scale_stats/6
execute if score #sanguine.blood_moon.level sanguine.dummy matches 7 run function sanguine:entity/technical/scale_stats/7
execute if score #sanguine.blood_moon.level sanguine.dummy matches 8 run function sanguine:entity/technical/scale_stats/8
execute if score #sanguine.blood_moon.level sanguine.dummy matches 9 run function sanguine:entity/technical/scale_stats/9
execute if score #sanguine.blood_moon.level sanguine.dummy matches 10.. run function sanguine:entity/technical/scale_stats/10

data modify entity @s Health set from entity @s Attributes[{Name:"minecraft:generic.max_health"}]

execute if entity @s[type=zombie,tag=!sanguine.entity] run function sanguine:entity/technical/scale_stats/zombie
execute if entity @s[type=skeleton,tag=!sanguine.entity] run function sanguine:entity/technical/scale_stats/skeleton