# Display particles when effect
playsound entity.warden.heartbeat ambient 1 ~ ~ ~ 1 2
 playsound entity.witch.ambient ambient @a[distance=..32] ~ ~ ~ 1 2

#creates and sets a scoreboard
scoreboard objectives add sat.elecaura.0 dummy
scoreboard players set @s sat.elecaura.0 1

#schedules the next functions
execute as @e[tag=sat.elecaura.user] run schedule function bro:magic/superelec/aura_buffer1 1 replace
execute as @e[tag=sat.elecaura.user] run schedule function bro:magic/superelec/aura_buffer2 1 replace
execute as @e[tag=sat.elecaura.user] run schedule function bro:magic/superelec/aura_stop 150s replace