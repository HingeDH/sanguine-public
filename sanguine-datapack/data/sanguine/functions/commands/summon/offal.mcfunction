summon zombie ~ ~ ~ {Silent:1b,DeathTime:19,DeathLootTable:"sanguine:entities/offal",Team:"smithed.prevent_aggression",Health:8f,Tags:["sanguine.offal","sanguine.offal.moving","sanguine.carrion_summon","sanguine.entity","sanguine.entity.blood_entity","sanguine.zombie_entity","smithed.entity"],CustomName:'{"translate":"entity.sanguine.offal"}',ArmorItems:[{},{},{},{id:'minecraft:potion',Count:1b,tag:{CustomModelData:8361004,sanguine:{custom_model_data:{idle:8361005,moving:8361005}},CustomPotionColor:16777215}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:10},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:0.2}]}

execute as @e[type=zombie,tag=sanguine.offal,tag=!sanguine.modified] run function sanguine:entity/technical/scale_stats
execute if entity @s[type=player] as @e[type=zombie,tag=sanguine.offal,sort=nearest,limit=1] run function sanguine:entity/technical/nametag/remove_tags