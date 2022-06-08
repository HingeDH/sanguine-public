tag @s remove sanguine.credence.open
stopsound @a[distance=..16] block block.barrel.close
execute as @a[tag=sanguine.inside_credence_gui,distance=..10] at @s unless entity @e[type=armor_stand,tag=sanguine.credence.open,distance=..10] run tag @s remove sanguine.inside_credence_gui
data remove block ~ ~ ~ Items[{Slot:22b}]