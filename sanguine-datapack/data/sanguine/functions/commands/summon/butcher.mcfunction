summon wandering_trader ~ ~ ~ {Silent:1b,DeathTime:19,DeathLootTable:"sanguine:entities/butcher",Team:"smithed.prevent_aggression",Health:25f,Tags:["sanguine.butcher","sanguine.entity","sanguine.entity.blood_entity","sanguine.trader_entity","smithed.entity"],CustomName:'{"translate":"entity.sanguine.butcher"}',ArmorItems:[{},{},{},{id:'minecraft:structure_block',Count:1b,tag:{CustomModelData:8361000,sanguine:{custom_model_data:{idle:8361031,moving:8361032}},CustomPotionColor:16777215}}],HandItems:[{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16777215,CustomModelData:8361031}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],HandDropChances:[-10000.0f,-10000.0f],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25},{Name:generic.knockback_resistance,Base:0.75},{Name:generic.movement_speed,Base:0.6},{Name:generic.attack_knockback,Base:0.2},{Name:generic.armor,Base:4}]}

execute as @e[type=wandering_trader,tag=sanguine.butcher,tag=!sanguine.modified] run function sanguine:entity/technical/scale_stats
execute if entity @s[type=player] as @e[type=wandering_trader,tag=sanguine.butcher,sort=nearest,limit=1] run function sanguine:entity/technical/nametag/remove_tags