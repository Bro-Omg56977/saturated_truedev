#plays sounds to player and removes key
playsound minecraft:block.vault.reject_rewarded_player ambient @s ~ ~ ~ 2 0.5
item replace entity @s weapon.mainhand with air 1 

#functions for the arena marker
execute as @e[type=marker,limit=1,tag=sat.aquaboss.arena,sort=nearest,distance=..32] at @s run function bro:aqua_other/boss_realstart

#functions for the interaction entitymarker
execute as @e[type=marker,limit=1,tag=sat.aquaboss.keyinteract,sort=nearest,distance=..32] at @s run function bro:aqua_other/boss_start0

#functions for the interaction entity
execute as @e[type=interaction,limit=1,tag=sat.aquaboss.keyinteract.interaction,sort=nearest] at @s run function bro:aqua_other/boss_start1

#revoke advancement to potentially redo the boss fight in the future
advancement revoke @s only bro:boss/aqua/detectkey