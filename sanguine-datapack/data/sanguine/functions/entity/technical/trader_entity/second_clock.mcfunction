effect give @s invisibility 1000000 0 true
data remove entity @s[tag=!sanguine.trader_entity.gui] Offers.Recipes
data modify entity @s[nbt=!{NoAI:1b}] HandItems[0].tag.fix_milk_bucket set value "Bruh"
execute if entity @s[predicate=sanguine:chance/0.15] run function sanguine:entity/technical/sounds/ambient
