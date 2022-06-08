data remove storage sanguine:storage root.temp
data modify storage sanguine:storage root.temp.block set from block ~ ~ ~
setblock ~ ~ ~ air
setblock ~ ~ ~ barrel
data modify block ~ ~ ~ {} merge from storage sanguine:storage root.temp.block