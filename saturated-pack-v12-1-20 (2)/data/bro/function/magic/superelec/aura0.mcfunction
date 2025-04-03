# Display particles when effect
playsound block.respawn_anchor.deplete ambient 1 ~ ~ ~ 1
 playsound minecraft:entity.warden.sonic_charge ambient @a[distance=..32] ~ ~ ~ 1 0.75
 playsound entity.witch.ambient ambient @a[distance=..32] ~ ~ ~ 1 2
 particle minecraft:explosion_emitter ~ ~1.4 ~ 0 0 0 0.01 1
 particle minecraft:gust_emitter_large ~ ~1.4 ~ 0 0 0 0.01 1

#creates and sets a scoreboard
scoreboard objectives add sat.elecaura.0 dummy
scoreboard players set @s sat.elecaura.0 1

#schedules the next functions
execute as @e[tag=sat.elecaura.user] run schedule function bro:magic/superelec/aura_buffer1 5 replace
execute as @e[tag=sat.elecaura.user] run schedule function bro:magic/superelec/aura_buffer2 4s replace
execute as @e[tag=sat.elecaura.user] run schedule function bro:magic/superelec/aura_stop 150s replace