execute if score @s sanguine.dummy2 matches 1.. run scoreboard players remove @s sanguine.dummy2 1
execute if score @s sanguine.dummy2 matches 6 run function sanguine:entity/unborn/attack_frame_2
execute if score @s sanguine.dummy2 matches 4 run function sanguine:entity/unborn/attack_frame_3
execute if score @s sanguine.dummy2 matches 2 run function sanguine:entity/unborn/attack_frame_2
execute if score @s sanguine.dummy2 matches 1 run function sanguine:entity/unborn/attack_end

effect clear @s poison