scoreboard players add @s sanguine.dummy 1
function sanguine:entity/player/events/spawning/spread_markers

execute at @s unless score @s sanguine.dummy matches 10.. unless entity @a[distance=..16,gamemode=!spectator] run function sanguine:entity/player/events/spawning/finalise_markers
execute at @s unless score @s sanguine.dummy matches 10.. if entity @a[distance=..16,gamemode=!spectator] run function sanguine:entity/player/events/spawning/init_markers
execute if score @s sanguine.dummy matches 10.. run kill @s