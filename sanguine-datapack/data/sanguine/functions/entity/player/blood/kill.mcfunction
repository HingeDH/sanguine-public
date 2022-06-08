advancement revoke @s only sanguine:technical/player_killed_entity/blood_giving_entity

execute if predicate sanguine:entity/holding/blood_oath if predicate sanguine:chance/0.1 run function sanguine:item/blood_oath/kill
execute if predicate sanguine:entity/wearing/butcher_skull if predicate sanguine:chance/0.25 run function sanguine:item/butcher_skull/kill