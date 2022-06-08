# #damage sanguine.dummy: damage to add to entity, to 1 decimal place
# #ignore_armor sanguine.dummy: 1 if ignores armor, 0 if doesn't

scoreboard players set @s sanguine.invul_timer 10

 ## Insert Armor Values (Not part of formula)
  execute store result score #temp_0 sanguine.dummy run attribute @s minecraft:generic.armor get 10
  execute store result score #temp_1 sanguine.dummy run attribute @s minecraft:generic.armor_toughness get 10

execute unless score #temp_0 sanguine.dummy matches 0 unless score #ignore_armor sanguine.dummy matches 1 run function sanguine:entity/player/damage/operations/armor
execute unless score #temp_0 sanguine.dummy matches 0 unless score #ignore_armor sanguine.dummy matches 1 run function sanguine:entity/player/damage/operations/protection
execute if data entity @s ActiveEffects[{Id:11b}] if score #damage sanguine.dummy matches 1.. run function sanguine:entity/player/damage/operations/resistance
function sanguine:entity/player/damage/calculate_attributes
execute unless entity @s[tag=sanguine.dead] run function sanguine:entity/player/damage/apply_damage
tag @s remove sanguine.dead