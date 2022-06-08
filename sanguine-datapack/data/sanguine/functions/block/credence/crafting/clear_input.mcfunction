tag @s remove sanguine.credence.assembled_output
playsound sanguine:block.credence.use block @a[distance=..16]

item modify block ~ ~ ~ container.3 sanguine:reduce_count/1
item modify block ~ ~ ~ container.4 sanguine:reduce_count/1
item modify block ~ ~ ~ container.5 sanguine:reduce_count/1
data modify storage sanguine:storage root.temp.barrel_data[1] set from block ~ ~ ~ Items

function sanguine:block/credence/crafting/update_blood
clear @a carrot_on_a_stick{sanguine:{id:"blood_binding_technical"}}
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{sanguine:{id:"blood_binding_technical"}}}}]
execute if entity @s[tag=sanguine.credence.blood_binding] as @p[tag=sanguine.inside_credence_gui,gamemode=!spectator,predicate=!sanguine:entity/full_inventory] at @s run loot give @s loot sanguine:technical/random_binding
execute if entity @s[tag=sanguine.credence.blood_binding] as @p[tag=sanguine.inside_credence_gui,gamemode=!spectator,predicate=sanguine:entity/full_inventory] at @s run loot spawn ~ ~ ~ loot sanguine:technical/random_binding
execute if entity @s[tag=sanguine.credence.blood_binding] unless entity @a[tag=sanguine.inside_credence_gui,gamemode=!spectator] run loot spawn ~ ~ ~ loot sanguine:technical/random_binding

execute if entity @s[tag=sanguine.reduce_blood.5] run scoreboard players remove @s sanguine.blood 5
execute if entity @s[tag=sanguine.reduce_blood.10] run scoreboard players remove @s sanguine.blood 10
execute if entity @s[tag=sanguine.reduce_blood.15] run scoreboard players remove @s sanguine.blood 15
execute if entity @s[tag=sanguine.reduce_blood.20] run scoreboard players remove @s sanguine.blood 20
execute if entity @s[tag=sanguine.reduce_blood.25] run scoreboard players remove @s sanguine.blood 25
execute if entity @s[tag=sanguine.reduce_blood.30] run scoreboard players remove @s sanguine.blood 30
execute if entity @s[tag=sanguine.reduce_blood.35] run scoreboard players remove @s sanguine.blood 35
execute if entity @s[tag=sanguine.reduce_blood.40] run scoreboard players remove @s sanguine.blood 40
execute if entity @s[tag=sanguine.reduce_blood.45] run scoreboard players remove @s sanguine.blood 45
execute if entity @s[tag=sanguine.reduce_blood.50] run scoreboard players remove @s sanguine.blood 50
function sanguine:block/credence/crafting/remove_blood_tags