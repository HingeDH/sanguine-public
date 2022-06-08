scoreboard players set @s sanguine.dummy 0
execute if predicate sanguine:chance/0.33 run scoreboard players set @s sanguine.dummy 8

data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.idle set value 8361028
data modify entity @s ArmorItems[3].tag.sanguine.custom_model_data.moving set value 8361029

attribute @s minecraft:generic.movement_speed modifier remove 8-3-6-2-0

playsound sanguine:entity.gurgle.spit hostile @a

tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator]
execute anchored eyes run summon armor_stand ^ ^ ^0.5 {Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Tags:["sanguine.entity","sanguine.gurgle_spit","smithed.entity"]}
execute as @e[type=armor_stand,tag=sanguine.gurgle_spit,sort=nearest,limit=1] at @s run function sanguine:entity/gurgle/spit/init