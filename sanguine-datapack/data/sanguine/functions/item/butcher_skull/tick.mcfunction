execute if predicate sanguine:entity/sprinting run scoreboard players add @s sanguine.butcher_skull.timer 1
execute unless predicate sanguine:entity/sprinting run scoreboard players set @s sanguine.butcher_skull.timer 0
execute unless predicate sanguine:entity/sprinting run attribute @s minecraft:generic.movement_speed modifier remove 8-3-6-2-410
execute unless predicate sanguine:entity/sprinting run tag @s remove sanguine.butcher_skull.max_speed

execute if score @s sanguine.butcher_skull.timer matches 20 run function sanguine:item/butcher_skull/update_speed
execute if score @s sanguine.butcher_skull.timer matches 40 run function sanguine:item/butcher_skull/update_speed
execute if score @s sanguine.butcher_skull.timer matches 60 run function sanguine:item/butcher_skull/update_speed
execute if score @s sanguine.butcher_skull.timer matches 80 run function sanguine:item/butcher_skull/update_speed
execute if score @s sanguine.butcher_skull.timer matches 100 run function sanguine:item/butcher_skull/update_speed

execute if entity @s[tag=sanguine.butcher_skull.max_speed] run effect give @s hunger 1 3 true
execute if entity @e[type=#sanguine:can_take_damage,distance=0.01..2.5,tag=!smithed.strict] if score @s sanguine.butcher_skull.timer matches 100.. run function sanguine:item/butcher_skull/deal_damage