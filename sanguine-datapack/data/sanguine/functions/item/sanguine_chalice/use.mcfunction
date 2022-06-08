scoreboard players add @s sanguine.blood 0

# Check Data
execute store result score #sanguine.temp_0 sanguine.dummy run data get entity @s[nbt={Inventory:[{Slot:-106b,tag:{sanguine:{id:"sanguine_chalice"}}}]},nbt=!{SelectedItem:{tag:{sanguine:{id:"sanguine_chalice"}}}}] Inventory[{Slot:-106b}].tag.sanguine.chalice_state
execute store result score #sanguine.temp_0 sanguine.dummy run data get entity @s[nbt={SelectedItem:{tag:{sanguine:{id:"sanguine_chalice"}}}}] SelectedItem.tag.sanguine.chalice_state

# Update Texture
execute if score #sanguine.temp_0 sanguine.dummy matches 0 if score @s sanguine.blood matches 5.. run item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{sanguine:{id:"sanguine_chalice"}}}]},nbt=!{SelectedItem:{tag:{sanguine:{id:"sanguine_chalice"}}}}] weapon.offhand sanguine:sanguine_chalice/offhand
execute if score #sanguine.temp_0 sanguine.dummy matches 0 if score @s sanguine.blood matches 5.. run item modify entity @s[nbt={SelectedItem:{tag:{sanguine:{id:"sanguine_chalice"}}}}] weapon.mainhand sanguine:sanguine_chalice/mainhand

execute if score #sanguine.temp_0 sanguine.dummy matches 1 run item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{sanguine:{id:"sanguine_chalice"}}}]},nbt=!{SelectedItem:{tag:{sanguine:{id:"sanguine_chalice"}}}}] weapon.offhand sanguine:sanguine_chalice/offhand
execute if score #sanguine.temp_0 sanguine.dummy matches 1 run item modify entity @s[nbt={SelectedItem:{tag:{sanguine:{id:"sanguine_chalice"}}}}] weapon.mainhand sanguine:sanguine_chalice/mainhand

# Effects
execute if score #sanguine.temp_0 sanguine.dummy matches 0 if score @s sanguine.blood matches 5.. run playsound sanguine:item.sanguine_chalice player @a
execute if score #sanguine.temp_0 sanguine.dummy matches 0 if score @s sanguine.blood matches 5.. run scoreboard players remove @s sanguine.blood 5
execute if score #sanguine.temp_0 sanguine.dummy matches 0 run function sanguine:entity/player/blood/display

execute if score #sanguine.temp_0 sanguine.dummy matches 1 run playsound minecraft:entity.generic.drink player @a
execute if score #sanguine.temp_0 sanguine.dummy matches 1 run effect give @s instant_health 1 0 true