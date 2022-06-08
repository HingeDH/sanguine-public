msg HingeDH Sanguine reloaded

# Dummy
scoreboard objectives add sanguine.dummy dummy
scoreboard objectives add sanguine.dummy2 dummy
scoreboard objectives add sanguine.carrot_on_a_stick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add sanguine.blood dummy
scoreboard objectives add sanguine.max_blood dummy
scoreboard objectives add sanguine.butcher_skull.timer dummy
scoreboard objectives add sanguine.bindings dummy
scoreboard objectives add sanguine.deaths deathCount

# Constants
scoreboard players set hurt_tint sanguine.dummy 16753571
scoreboard players set #-1 sanguine.dummy -1
scoreboard players set #1 sanguine.dummy 1
scoreboard players set #2 sanguine.dummy 2
scoreboard players set #3 sanguine.dummy 3
scoreboard players set #4 sanguine.dummy 4
scoreboard players set #5 sanguine.dummy 5
scoreboard players set #6 sanguine.dummy 6
scoreboard players set #10 sanguine.dummy 10
scoreboard players set #16 sanguine.dummy 16
scoreboard players set #25 sanguine.dummy 25
scoreboard players set #60 sanguine.dummy 60
scoreboard players set #100 sanguine.dummy 100
scoreboard players set #180 sanguine.dummy 180
scoreboard objectives add sanguine.invul_timer dummy

# Initialise
scoreboard players set #sanguine.installed sanguine.dummy 1
scoreboard players set #sanguine.version.major sanguine.dummy 0
scoreboard players set #sanguine.version.minor sanguine.dummy 1
scoreboard players set #sanguine.version.bugfix sanguine.dummy 0

# LCRNG
scoreboard players set #8 sanguine.dummy 8
scoreboard players set #lcg_a sanguine.dummy 1630111353
scoreboard players set #lcg_c sanguine.dummy 1623164762
scoreboard players set #lcg_m sanguine.dummy 2147483647