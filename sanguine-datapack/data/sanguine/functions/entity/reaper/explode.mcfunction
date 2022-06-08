playsound sanguine:entity.reaper.explode hostile @a
particle dust 0.839 0.310 0.043 2 ~ ~ ~ 2 2 2 0.1 100 force
tp @s ~ -512 ~

execute if score #sanguine.blood_moon.level sanguine.dummy matches 1..6 run summon creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0,CustomName:'{"translate":"entity.sanguine.reaper"}'}
execute if score #sanguine.blood_moon.level sanguine.dummy matches 7..8 run summon creeper ~ ~ ~ {ExplosionRadius:4b,Fuse:0,CustomName:'{"translate":"entity.sanguine.reaper"}'}
execute if score #sanguine.blood_moon.level sanguine.dummy matches 9..10 run summon creeper ~ ~ ~ {ExplosionRadius:5b,Fuse:0,CustomName:'{"translate":"entity.sanguine.reaper"}'}