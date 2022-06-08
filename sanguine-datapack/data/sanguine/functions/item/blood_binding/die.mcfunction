execute unless entity @s[tag=sanguine.binding.heritage] run function sanguine:item/blood_binding/remove_all
execute if entity @s[tag=sanguine.binding.heritage] run function sanguine:item/blood_binding/reapply

scoreboard players reset @s sanguine.deaths
scoreboard players reset @s sanguine.blood
scoreboard players set @s sanguine.max_blood 20