# Check if the contents of the barrel have changed at all
data modify entity @s ArmorItems[3].tag.sanguine.stored_barrel_data[0] set from entity @s ArmorItems[3].tag.sanguine.stored_barrel_data[1]
execute store success score @s sanguine.dummy run data modify entity @s ArmorItems[3].tag.sanguine.stored_barrel_data[1] set from block ~ ~ ~ Items
scoreboard players set @s[tag=!sanguine.credence.open] sanguine.dummy 1
execute if entity @s[scores={sanguine.dummy=1..}] if data block ~ ~ ~ Items run function sanguine:block/credence/crafting/barrel_updated

# Update blood count
function sanguine:block/credence/crafting/update_blood

# Fix hopper minecarts being evil little garbage machines
execute positioned ~ ~-2 ~ as @e[type=minecraft:hopper_minecart,dy=2,tag=!smithed.entity] at @s run function sanguine:block/credence/tick/hopper_minecart 

# Add tag
tag @s add sanguine.credence.open