# Entity Management
execute as @e[type=#sanguine:tick,tag=sanguine.entity] at @s run function sanguine:entity/tick
execute as @a at @s run function sanguine:entity/player/tick

# Time Management
execute store result score #sanguine.day sanguine.dummy run time query day
execute store result score #sanguine.daytime sanguine.dummy run time query daytime

# Blood Moon Cycle
scoreboard players operation #sanguine.blood_moon.cycle sanguine.dummy = #sanguine.day sanguine.dummy
scoreboard players operation #sanguine.blood_moon.cycle sanguine.dummy %= #10 sanguine.dummy

# Blood Moon Management
execute if score #sanguine.blood_moon.cycle sanguine.dummy matches 0 unless score #sanguine.day sanguine.dummy matches 0 if score #sanguine.daytime sanguine.dummy matches 1 run function sanguine:technical/blood_moon/warning
execute if score #sanguine.blood_moon.cycle sanguine.dummy matches 0 unless score #sanguine.day sanguine.dummy matches 0 if score #sanguine.daytime sanguine.dummy matches 13000 run function sanguine:technical/blood_moon/initiate
execute unless score #sanguine.blood_moon.cycle sanguine.dummy matches 0 run function sanguine:technical/blood_moon/end
execute if score #sanguine.day sanguine.dummy matches 0 run function sanguine:technical/blood_moon/end