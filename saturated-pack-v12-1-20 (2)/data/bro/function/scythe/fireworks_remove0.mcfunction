
execute as @e[tag=fireworkeffects] at @s run particle minecraft:sonic_boom ~0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=fireworkeffects] at @s run particle minecraft:sonic_boom ~-0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=fireworkeffects] at @s run particle minecraft:sonic_boom ~ ~1.4 ~ 0 0 0 1 10
execute as @e[tag=fireworkeffects] at @s run summon tnt ~ ~ ~ {fuse:1}
execute as @e[tag=fireworkeffects] at @s run effect give @e[tag=fireworkeffects,type=!#minecraft:undead] minecraft:instant_damage 1 10 false
execute as @e[tag=fireworkeffects] at @s run effect give @e[tag=fireworkeffects,type=#minecraft:undead] minecraft:instant_health 1 10 false
execute as @e[tag=fireworkeffects] run function bro:scythe/fireworks_remove1