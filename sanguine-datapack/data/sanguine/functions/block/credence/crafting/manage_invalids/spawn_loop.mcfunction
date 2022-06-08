scoreboard players remove @s sanguine.dummy 1
execute as @p[tag=sanguine.inside_credence_gui,gamemode=!spectator] at @s run summon item ~ ~ ~ {Item:{id:"stone",Count:1b},Tags:["sanguine.replace_item","smithed.entity"]}
execute unless entity @a[tag=sanguine.inside_credence_gui,gamemode=!spectator] run summon item ~ ~0.5 ~ {Item:{id:"stone",Count:1b},Tags:["sanguine.replace_item","smithed.entity"]}
execute as @e[type=item,limit=1,tag=sanguine.replace_item] run function sanguine:block/credence/crafting/manage_invalids/edit_exported_item
data remove storage sanguine:storage root.temp.export_items[0]
execute if entity @s[scores={sanguine.dummy=1..}] run function sanguine:block/credence/crafting/manage_invalids/spawn_loop
