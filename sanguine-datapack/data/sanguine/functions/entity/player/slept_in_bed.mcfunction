advancement revoke @s only sanguine:technical/slept_in_bed/slept_in_bed

execute if score #sanguine.blood_moon.phase sanguine.dummy matches 1..2 run tp @s ~ ~0.01 ~
execute if score #sanguine.blood_moon.phase sanguine.dummy matches 1..2 run title @s actionbar {"translate":"ui.sanguine.blood_moon.prevent_sleep","color":"red"}
execute if score #sanguine.blood_moon.phase sanguine.dummy matches 1..2 unless score @s manic.hide_sanity matches 60.. run scoreboard players set @s manic.hide_sanity 60
execute if score #sanguine.blood_moon.phase sanguine.dummy matches 1..2 run scoreboard players set @s manic.last_slept 1000