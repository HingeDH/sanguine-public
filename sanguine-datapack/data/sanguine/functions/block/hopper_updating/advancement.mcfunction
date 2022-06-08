execute as @e[type=armor_stand,distance=..7,tag=sanguine.prevents_hoppers] at @s run function sanguine:block/hopper_updating/fill
advancement revoke @s only sanguine:technical/placed_block/hopper
