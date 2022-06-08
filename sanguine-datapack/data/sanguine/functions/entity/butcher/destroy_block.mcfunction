execute unless block ~ ~ ~ #sanguine:butcher_cannot_break run setblock ~ ~ ~ air destroy
execute unless block ~ ~1 ~ #sanguine:butcher_cannot_break run setblock ~ ~1 ~ air destroy
function sanguine:entity/butcher/charge_end

execute unless entity @s[tag=sanguine.butcher.unhorned] if block ~ ~ ~ #sanguine:butcher_cannot_break run function sanguine:entity/butcher/dehorn
execute unless entity @s[tag=sanguine.butcher.unhorned] if block ~ ~1 ~ #sanguine:butcher_cannot_break run function sanguine:entity/butcher/dehorn