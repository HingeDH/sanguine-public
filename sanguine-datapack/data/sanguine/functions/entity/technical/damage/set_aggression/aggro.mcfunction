############################################################
# Aggravates a mob
############################################################

data merge entity @s {AngerTime:800,AngryAt:[I; 0, 0, 0, 0]}
data modify entity @s AngryAt set from storage sanguine:storage root.temp.attacker.UUID
