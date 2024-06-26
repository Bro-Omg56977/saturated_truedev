execute in bro:saturated run forceload add ~ ~
execute in bro:saturated align xz run tp @s ~ 300 ~
execute at @s run fill ~3 ~1 ~3 ~-3 ~-1 ~-3 air 
execute at @s[gamemode=!spectator] run setblock ~ 249 ~ minecraft:gravel keep
effect give @s slow_falling 45 1 true
advancement revoke @a only bro:lim_to_sat
execute as @s run forceload remove ~ ~
title @a actionbar "§3Sometimes the player dreamed it was lost in a story."