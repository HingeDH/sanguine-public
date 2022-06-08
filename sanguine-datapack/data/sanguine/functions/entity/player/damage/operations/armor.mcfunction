############################################################
# Calculates armor into the damage formula
############################################################

# #damage sanguine.dummy: damage to add to entity, to 1 decimal place (x10)


  ## https://static.wikia.nocookie.net/minecraft_gamepedia/images/0/0e/ArmorDamageFormula.svg/revision/latest/scale-to-width-down/668?cb=20190728042948
  ## FORMULA:
  ## damage = damage * (1 - (min(20,max(armor ÷ 5 , ATF))) ÷ 25)


 ## Insert Armor Toughness
  execute store result score #temp_1 sanguine.dummy run attribute @s minecraft:generic.armor_toughness get 10

  # Create value for first portion of max(armor ÷ 5, ATF)
  # This leads to armor ÷ 5 being stored in sanguine.temp_2
scoreboard players operation #temp_2 sanguine.dummy = #temp_0 sanguine.dummy
scoreboard players operation #temp_2 sanguine.dummy /= #5 sanguine.dummy

 ##### SEPARATOR SO YOUR BRAIN DOESN'T MELT

  # Create values for second portion of max(armor ÷ 5, ATF) (ATF)
  # This is the armor toughness formula calculation. It is nasty.
  # It is equal to: (armor - damage ÷ (2 + (toughness ÷ 4)))



  # Assign Temporary Values from the semi-permanent values.

  # Armor
scoreboard players operation #temp_3 sanguine.dummy = #temp_0 sanguine.dummy
  # Damage
scoreboard players operation #temp_4 sanguine.dummy = #damage sanguine.dummy
  # Armor Toughness
scoreboard players operation #temp_5 sanguine.dummy = #temp_1 sanguine.dummy


  # Divide by 4 (working inside -> out), so (toughness ÷ 4) first.
  # #4 always has the value of 4.

scoreboard players operation #temp_5 sanguine.dummy /= #4 sanguine.dummy


  # Then we add 2 to that, again working inside -> out. (2 + (toughness ÷ 4))

scoreboard players add #temp_5 sanguine.dummy 20


  # Then, divide the damage by that value. (damage ÷ (2 + (toughness ÷ 4)))

scoreboard players operation #temp_4 sanguine.dummy /= #temp_5 sanguine.dummy
scoreboard players operation #temp_4 sanguine.dummy *= #10 sanguine.dummy

  # Then subtract that value from armor, and you have the final result of the armor toughness formula.

scoreboard players operation #temp_3 sanguine.dummy -= #temp_4 sanguine.dummy

 ##### SEPARATOR SO YOUR BRAIN DOESN'T MELT



 # The next portion of this massive garbage heap of a formula. The max(armor ÷ 5, ATF). We've already calculated both, so we can just put them in here, and take the greatest one.
 # sanguine.temp_2 = armor ÷ 5
 # sanguine.temp_3 = Armor Toughness Formula results

execute if score #temp_3 sanguine.dummy > #temp_2 sanguine.dummy run scoreboard players operation #temp_2 sanguine.dummy = #temp_3 sanguine.dummy


 # Then the next part, the min(20, max(whatever was in last step)). If >20, it equals 20.
 # sanguine.temp_2 = The results from last step, carried over.

execute if score #temp_2 sanguine.dummy matches 200.. run scoreboard players set #temp_2 sanguine.dummy 200



 # The REALLY MESSY MATH

  # Multiply by 10 to maintain precision
scoreboard players operation #temp_2 sanguine.dummy *= #10 sanguine.dummy
  # Divide by 25 per the formula
scoreboard players operation #temp_2 sanguine.dummy /= #25 sanguine.dummy

  # Then subtract it all from 1 (100)

scoreboard players set #temp_0 sanguine.dummy 100
scoreboard players operation #temp_0 sanguine.dummy -= #temp_2 sanguine.dummy

  # Multiply the damage by the end result, then divide by 100 to get proper precision back.
scoreboard players operation #damage sanguine.dummy *= #temp_0 sanguine.dummy
scoreboard players operation #damage sanguine.dummy /= #100 sanguine.dummy
