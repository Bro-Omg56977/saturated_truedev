tag @s add sat.altar.theonewhointeracted

#plays sounds to player and removes key
playsound minecraft:block.amethyst_block.resonate ambient @a[distance=..32] ~ ~ ~ 2 0.5
playsound minecraft:block.amethyst_block.chime ambient @a[distance=..32] ~ ~ ~ 2 0.5
item replace entity @s weapon.mainhand with air 1 

#functions for the interaction entitymarker
execute as @e[type=marker,limit=1,tag=sat.altar.lecturnremove,sort=nearest,distance=..32] at @s run function bro:pale_other/replaceblock

#functions for the interaction entitymarker but for real
execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker,sort=nearest,distance=..32] at @s run function bro:pale_other/altar_activate_speak0
execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker,sort=nearest,distance=..32] at @s run function bro:pale_other/altar_activated_particleburst

#functions for the interaction entitymarker but for real
execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker.activated,sort=nearest,distance=..32] at @s run function bro:pale_other/altar_activated_particleburst
execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker.activated,sort=nearest,distance=..32] at @s run function bro:pale_other/altar_speak_root

#functions for the interaction entity
execute as @e[type=interaction,limit=1,tag=sat.altar.interaction.entity,sort=nearest,distance=..32] at @s run function bro:pale_other/altar_interact_disable

#revoke advancement to potentially redo the boss fight in the future
advancement revoke @s only bro:pale/technical/altar_interact