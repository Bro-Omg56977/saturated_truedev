#flash and sound
particle flash ~ ~ ~ 0 0 0 0 10
playsound block.bell.resonate ambient @a[distance=..32] ~ ~ ~ 2 0.75

#schedules next function
execute as @a[tag=sat.altar.theonewhointeracted] at @s run execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker,sort=nearest,distance=..32] run schedule function bro:pale_other/altar_activate_speak1 3s replace