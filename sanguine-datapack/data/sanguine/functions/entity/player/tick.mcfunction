execute if score @s sanguine.invul_timer matches 1.. run scoreboard players remove @s sanguine.invul_timer 1
execute if score @s sanguine.carrot_on_a_stick matches 1.. run function sanguine:item/carrot_on_a_stick
execute if score @s sanguine.deaths matches 1.. run function sanguine:item/blood_binding/die

execute if predicate sanguine:entity/wearing/butcher_skull run function sanguine:item/butcher_skull/tick
execute unless predicate sanguine:entity/wearing/butcher_skull run function sanguine:item/butcher_skull/update_speed