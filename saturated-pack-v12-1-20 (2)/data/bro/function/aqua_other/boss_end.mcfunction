#loot
give @s cyan_shulker_box[container_loot={loot_table:"bro:chests/aqua/boss_drop"}]
playsound entity.wither.death ambient @a[distance=..32] ~ ~ ~ 2 0.5

#functions for the arena marker
execute as @e[type=marker,limit=1,tag=sat.aquaboss.arena,sort=nearest] at @s run setblock ~ ~ ~ waxed_chiseled_copper

#functions for the interaction entitymarker
execute as @e[type=marker,limit=1,tag=sat.aquaboss.keyinteract.readdlater,sort=nearest] at @s run tag @s add sat.aquaboss.keyinteract
execute as @e[type=marker,limit=1,tag=sat.aquaboss.keyinteract.readdlater,sort=nearest] at @s run tag @s remove sat.aquaboss.keyinteract.readdlater

#functions for the interaction entity
execute as @e[type=interaction,limit=1,tag=sat.aquaboss.keyinteract.interaction.readdlater,sort=nearest] at @s run tag @s add sat.aquaboss.keyinteract.interaction
execute as @e[type=interaction,limit=1,tag=sat.aquaboss.keyinteract.interaction.readdlater,sort=nearest] at @s run tag @s remove sat.aquaboss.keyinteract.interaction.readdlater

execute as @e[type=marker,tag=sat.superelec.auradecor] run kill @s
advancement revoke @s only bro:boss/aqua/detectphase3death
advancement grant @s only bro:saturated/electric_avenue