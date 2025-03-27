playsound block.sculk_shrieker.shriek ambient @a[distance=..32] ~ ~ ~ 1 2
playsound entity.ender_dragon.flap ambient @a[distance=..32] ~ ~ ~ 1 0.1
playsound minecraft:item.firecharge.use ambient @a[distance=..32] ~ ~ ~ 1 0.1
 
#summons a ton of aoe markers
summon marker ~ ~1 ~ {Tags:["sat.superelec.aoe"],Rotation:[0f,-180f]}
summon marker ~ ~1 ~ {Tags:["sat.superelec.aoe"],Rotation:[0f,-180f]}
summon marker ~ ~1 ~ {Tags:["sat.superelec.aoe"],Rotation:[0f,-180f]}
summon marker ~ ~1 ~ {Tags:["sat.superelec.aoe"],Rotation:[0f,-180f]}
summon marker ~ ~1 ~ {Tags:["sat.superelec.aoe"],Rotation:[0f,-180f]}
summon marker ~ ~1 ~ {Tags:["sat.superelec.aoe"],Rotation:[0f,-180f]}

spreadplayers ~ ~ 0 24 false @e[type=marker,tag=sat.superelec.aoe]

execute as @e[type=marker,tag=sat.superelec.aoe] run function bro:magic/superelec/aoe_tick