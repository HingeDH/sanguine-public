execute anchored eyes if score @s sanguine.dummy matches 11 run particle item structure_block{CustomModelData:8361001} ~ ~1.5 ~ 0.35 0.1 0.35 0 5
execute if entity @s[tag=sanguine.carrion.flesh_hook] run function sanguine:entity/carrion/tick_whip

effect clear @s poison