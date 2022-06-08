summon marker ~ ~ ~ {Tags:["sanguine.spawn_marker"]}
execute if score #sanguine.blood_moon.level sanguine.dummy matches 1 if predicate sanguine:chance/0.5 run summon marker ~ ~ ~ {Tags:["sanguine.spawn_marker"]}

execute if score #sanguine.blood_moon.level sanguine.dummy matches 2.. run summon marker ~ ~ ~ {Tags:["sanguine.spawn_marker"]}
execute if score #sanguine.blood_moon.level sanguine.dummy matches 2.. if predicate sanguine:chance/0.5 run summon marker ~ ~ ~ {Tags:["sanguine.spawn_marker"]}

execute if score #sanguine.blood_moon.level sanguine.dummy matches 3.. if predicate sanguine:chance/0.25 run summon marker ~ ~ ~ {Tags:["sanguine.spawn_marker"]}

execute if score #sanguine.blood_moon.level sanguine.dummy matches 4.. run summon marker ~ ~ ~ {Tags:["sanguine.spawn_marker"]}

execute if score #sanguine.blood_moon.level sanguine.dummy matches 5.. if predicate sanguine:chance/0.25 run summon marker ~ ~ ~ {Tags:["sanguine.spawn_marker"]}

execute as @e[type=marker,tag=sanguine.spawn_marker] run function sanguine:entity/player/events/spawning/init_markers