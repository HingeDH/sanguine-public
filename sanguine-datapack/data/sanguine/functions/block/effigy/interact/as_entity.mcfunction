tag @p[advancements={sanguine:technical/player_interacted_with_entity/effigy={bind=true}}] add sanguine.tag
execute if data storage sanguine:storage root.temp{bind:1b} run tag @s add sanguine.effigy.hold

data modify entity @s ArmorItems[3].tag.sanguine.effigy_break_state set value 0
