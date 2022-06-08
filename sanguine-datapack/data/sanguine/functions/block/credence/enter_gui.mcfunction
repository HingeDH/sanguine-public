tag @s add sanguine.inside_credence_gui
stopsound @a[distance=..16] block block.barrel.open

# Fix the edge case bug if the barrel was stuck in the closed state
execute as @e[type=armor_stand,distance=..7,tag=sanguine.credence] at @s if block ~ ~ ~ minecraft:barrel[open=false] run function sanguine:block/credence/open
advancement revoke @s only sanguine:technical/item_used_on_block/open_credence
