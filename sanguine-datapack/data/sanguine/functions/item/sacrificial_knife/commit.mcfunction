scoreboard players add @s sanguine.blood 0
execute if score @s[gamemode=!creative,gamemode=!spectator] sanguine.blood matches ..4 run function sanguine:entity/player/apply_damage/sacrificial_knife
execute if score @s sanguine.blood matches 5.. run scoreboard players remove @s sanguine.blood 5
function sanguine:entity/player/blood/display
item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{sanguine:{id:"sacrificial_knife"}}}]},nbt=!{SelectedItem:{tag:{sanguine:{id:"sacrificial_knife"}}}}] weapon.offhand sanguine:sacrificial_knife/sacrificial_knife_off
item modify entity @s[nbt={SelectedItem:{tag:{sanguine:{id:"sacrificial_knife"}}}}] weapon.mainhand sanguine:sacrificial_knife/sacrificial_knife
playsound sanguine:item.sacrificial_knife.stab player @a