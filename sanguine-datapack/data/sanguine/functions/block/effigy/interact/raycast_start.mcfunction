data remove storage sanguine:storage root.temp
data modify storage sanguine:storage root.temp.item set from entity @s SelectedItem

execute if entity @s[advancements={sanguine:technical/player_interacted_with_entity/effigy={bind=true}}] run data modify storage sanguine:storage root.temp.bind set value 1b

tag @s remove sanguine.tag
execute unless score @s sanguine.bindings matches 9.. anchored eyes run function sanguine:entity/technical/raycast/raycast
execute if entity @s[gamemode=!creative,tag=sanguine.tag] run function sanguine:item/blood_binding/check
tag @s remove sanguine.tag

advancement revoke @s only sanguine:technical/player_interacted_with_entity/effigy