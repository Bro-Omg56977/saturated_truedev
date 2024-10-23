#not exactly sure what to put here. i just had the realization that i could just use the same tags and scoreboards between each spell with little no to consenquence. fuuucc

execute as @e[tag=hysteriaeffect] at @s run particle minecraft:sonic_boom ~0.2 ~1 ~0.2 0 0 0 0.1 10
execute as @e[tag=hysteriaeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=hysteriaeffect] at @s run particle minecraft:sonic_boom ~-0.2 ~1 ~0.2 0 0 0 0.1 10
execute as @e[tag=hysteriaeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.1 10
execute as @e[tag=hysteriaeffect] at @s run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=hysteriaeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.1 10
execute as @e[tag=hysteriaeffect] at @s run particle minecraft:sonic_boom ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=hysteriaprojectile,tag=!hysteriaeffect] at @s run tag @e[tag=!hysteriaprojectile,tag=!hysteriaeffect,distance=..20] add hysteriaprojectile
execute as @e[tag=hysteriaeffect] at @s run tag @e[tag=!hysteriaprojectile,tag=!hysteriaeffect,distance=..20] add hysteriaprojectile
execute as @e[tag=hysteriaprojectile,tag=!hysteriaeffect] at @s run damage @s 1 generic by @e[sort=nearest,limit=1,type=#bro:evil,distance=..20]
execute as @e[tag=hysteriaprojectile,tag=!hysteriaeffect] at @s run effect give @s slowness 20 1 false
execute as @e[tag=hysteriaprojectile,tag=!hysteriaeffect] at @s run effect give @s weakness 20 1 false
execute as @e[tag=hysteriaprojectile,tag=!hysteriaeffect] at @s run effect give @s glowing 20 1 false
execute as @e[tag=hysteriaeffect] at @s run effect give @s speed 20 1 true
execute as @e[tag=hysteriaeffect] at @s run effect give @s jump_boost 20 1 true
execute as @e[tag=hysteriaeffect] at @s run effect give @s strength 20 1 true
execute as @e[tag=hysteriaeffect] at @s run tellraw @s "§5Five Souls have been consumed"
execute as @e[tag=hysteriaeffect] run scoreboard players remove @e soul_count 5
execute as @e[tag=hysteriaeffect] run function bro:scythe/trident/hysteria_remove