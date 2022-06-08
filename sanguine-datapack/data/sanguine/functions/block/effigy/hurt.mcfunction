execute if entity @s[nbt={ArmorItems:[{tag:{sanguine:{effigy_break_state:2}}}]}] run function sanguine:block/effigy/break
execute if entity @s[nbt={ArmorItems:[{tag:{sanguine:{effigy_break_state:1}}}]}] run data modify entity @s ArmorItems[3].tag.sanguine.effigy_break_state set value 2
execute if entity @s[nbt={ArmorItems:[{tag:{sanguine:{effigy_break_state:0}}}]}] run data modify entity @s ArmorItems[3].tag.sanguine.effigy_break_state set value 1
execute if entity @s[nbt={ArmorItems:[{tag:{sanguine:{effigy_break_state:-1}}}]}] run data modify entity @s ArmorItems[3].tag.sanguine.effigy_break_state set value 0
playsound minecraft:block.stone.hit neutral @a
particle block bone_block ~ ~0.5 ~ 0.5 0.5 0.5 0 5