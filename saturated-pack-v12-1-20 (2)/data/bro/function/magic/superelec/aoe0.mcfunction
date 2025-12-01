playsound block.sculk_shrieker.shriek ambient @a[distance=..32] ~ ~ ~ 1 2
playsound entity.ender_dragon.flap ambient @a[distance=..32] ~ ~ ~ 1 0.1
playsound minecraft:item.firecharge.use ambient @a[distance=..32] ~ ~ ~ 1 0.1
 
#summons a ton of aoe markers
summon marker ~ ~1 ~ {Tags:["sat.superelec.aoe"],Rotation:[0f,-180f]}

#same as above but for underground
summon marker ~ ~1 ~ {Tags:["sat.superelec.aoe","sat.superelec.aoe2"],Rotation:[0f,-180f]}

spreadplayers ~ ~ 0 10 false @e[type=marker,tag=sat.superelec.aoe,tag=!sat.superelec.aoe2]
spreadplayers ~ ~ 0 10 under 60 false @e[type=marker,tag=sat.superelec.aoe2]

execute as @e[type=marker,tag=sat.superelec.aoe] run function bro:magic/superelec/aoe_tick