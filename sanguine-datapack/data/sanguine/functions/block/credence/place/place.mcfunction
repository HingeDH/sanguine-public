setblock ~ ~ ~ air
setblock ~ ~ ~ barrel{CustomName:'{"color":"white","font":"sanguine:credence","translate":"block.sanguine.credence.gui","with":[{"color":"#3F3F3F","font":"minecraft:default","translate":"block.sanguine.credence"}]}'}
summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.sanguine.credence"}',ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:8361000,sanguine:{stored_barrel_data:[[],[]]}}}],Tags:["sanguine.block","sanguine.entity","sanguine.second_clock","sanguine.ten_second_clock","sanguine.credence","smithed.entity","smithed.block","sanguine.prevents_hoppers"],NoGravity:1b,Invisible:1b,Marker:1b}
function sanguine:block/hopper_updating/fill
