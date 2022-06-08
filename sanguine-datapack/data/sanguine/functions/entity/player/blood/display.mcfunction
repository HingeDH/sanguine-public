scoreboard players set @s manic.hide_sanity 60

execute unless score @s sanguine.blood = @s sanguine.blood run scoreboard players set @s sanguine.blood 0
execute unless score @s sanguine.max_blood = @s sanguine.max_blood run scoreboard players set @s sanguine.max_blood 20

execute unless score @s sanguine.blood > @s sanguine.max_blood run title @s actionbar [{"text":"A","font":"sanguine:blood"},{"text":" ","font":"minecraft:default"},{"score":{"name":"@s","objective":"sanguine.blood"},"font":"minecraft:default","color":"#E32F21"},{"text":"/","font":"minecraft:default","color":"#E32F21"},{"score":{"name":"@s","objective":"sanguine.max_blood"},"font":"minecraft:default","color":"#E32F21"}]
execute if score @s sanguine.blood > @s sanguine.max_blood run title @s actionbar [{"text":"A","font":"sanguine:blood"},{"text":" ","font":"minecraft:default"},{"score":{"name":"@s","objective":"sanguine.blood"},"font":"minecraft:default","color":"#720B0B"},{"text":"/","font":"minecraft:default","color":"#E32F21"},{"score":{"name":"@s","objective":"sanguine.max_blood"},"font":"minecraft:default","color":"#E32F21"}]