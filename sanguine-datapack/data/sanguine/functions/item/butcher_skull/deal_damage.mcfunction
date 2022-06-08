scoreboard players set #sanguine.gore_damage sanguine.dummy 320

data modify storage sanguine:storage root.temp.attacker.UUID set from entity @s UUID
tag @s add sanguine.butcher_skull_damager
execute if entity @e[distance=..2.5,type=#sanguine:blood_giving_entity,tag=!smithed.strict] run scoreboard players add @s sanguine.blood 1
execute as @e[distance=..2.5,type=#sanguine:can_take_damage,tag=!smithed.strict] run function sanguine:item/butcher_skull/as_mob
execute as @a[distance=..2.5,tag=!sanguine.butcher_skull_damager] run function sanguine:entity/player/apply_damage/butcher_skull
tag @s remove sanguine.butcher_skull_damager

scoreboard players reset @s sanguine.damage_dealt
function sanguine:item/butcher_skull/reset_speed
playsound sanguine:entity.butcher.charge_end player @a
function sanguine:entity/player/blood/display