# Break if there is no barrel
execute unless block ~ ~ ~ barrel run function sanguine:block/credence/break/main
execute if block ~ ~ ~ barrel[open=true] run function sanguine:block/credence/tick/open
execute if entity @s[tag=sanguine.credence.open] if block ~ ~ ~ barrel[open=false] run function sanguine:block/credence/tick/close

# Make mycologists
#execute as @e[type=villager,distance=..2,nbt={VillagerData:{profession:"minecraft:fisherman"},Xp:0},tag=!sanguine.mycologist,tag=!smithed.entity] if data entity @s Brain.memories."minecraft:job_site" run function sanguine:block/credence/check_mycologist

# Fuck hoppers
execute if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown:12}