#plays a few sounds
playsound entity.witch.celebrate ambient @a[distance=..32] ~ ~ ~ 1 0.1
playsound entity.enderman.teleport ambient @a[distance=..32] ~ ~ ~ 1 0.1
playsound entity.breeze.charge ambient @a[distance=..32] ~ ~ ~ 1 0.1
playsound block.respawn_anchor.deplete ambient @a[distance=..32] ~ ~ ~ 1 2

#particle burst 1
particle minecraft:end_rod ~0.2 ~1 ~-0.2 0 0 0 1 10
particle minecraft:end_rod ~-0.2 ~1 ~-0.2 0 0 0 1 10
particle minecraft:end_rod ~ ~1.4 ~ 0 0 0 1 10
particle minecraft:end_rod ~ ~0.6 ~ 0 0 0 0.01 10

#particle burst 2 (rift)
particle squid_ink ~ ~ ~ 0.2 2.5 0.2 0.025 60 force
particle falling_dust{block_state:{Name:black_concrete_powder}} ~ ~ ~ 0.2 2.5 0.2 0.2 30 force
particle dust{color:[0.0,0.0,0.0],scale:1} ~ ~ ~ 0.2 2.5 0.2 0.2 30 force

#random teleport
spreadplayers ~ ~ 2 5 false @e[tag=sat.dimensional.disorintation]

#facing randomly and several negative effects
teleport @s ~ ~ ~ facing ^1 ^1 ^1
effect give @s blindness 5 0 true
effect give @s darkness 5 0 true
effect give @s slowness 5 3 true
effect give @s weakness 5 2 true
effect give @s glowing 10 2 true
damage @s 8 magic

#particle burst 3 (exit rift)
particle end_rod ~ ~ ~ 0.2 6 0.2 0.025 60 force
particle falling_dust{block_state:{Name:white_concrete_powder}} ~ ~ ~ 0.2 6 0.2 0.2 30 force
particle dust{color:[1.0,1.0,1.0],scale:4} ~ ~ ~ 0.2 6 0.2 0.2 30 force

#end of function
function bro:magic/dimension_end