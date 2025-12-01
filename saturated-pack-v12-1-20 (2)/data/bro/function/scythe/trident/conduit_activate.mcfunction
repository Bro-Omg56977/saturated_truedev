#not exactly sure what to put here. i just had the realization that i could just use the same tags and scoreboards between each spell with little no to consenquence. fuuucc

execute as @e[tag=conduiteffect] at @s run particle minecraft:nautilus ~0.2 ~1 ~0.2 0 0 0 0.1 10
execute as @e[tag=conduiteffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=conduiteffect] at @s run particle minecraft:nautilus ~-0.2 ~1 ~0.2 0 0 0 0.1 10
execute as @e[tag=conduiteffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.1 10
execute as @e[tag=conduiteffect] at @s run particle minecraft:nautilus ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=conduiteffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.1 10
execute as @e[tag=conduiteffect] at @s run particle minecraft:nautilus ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=conduitprojectile,tag=!conduiteffect] at @s run tag @e[tag=!conduitprojectile,tag=!conduiteffect,distance=..10] add conduitprojectile
execute as @e[tag=conduiteffect] at @s run tag @e[tag=!conduitprojectile,tag=!conduiteffect,distance=..10] add conduitprojectile
execute as @e[tag=conduiteffect] at @s run title @s actionbar "§9Two Souls have been consumed"
execute as @e[tag=conduiteffect] run scoreboard players remove @s soul_count 5
execute as @e[tag=conduiteffect] run function bro:scythe/trident/conduit_remove
execute as @e[tag=conduitprojectile] run schedule function bro:scythe/trident/conduit_buffer 2s replace
execute as @e[tag=conduitprojectile] run schedule function bro:scythe/trident/conduit_buffer0 4s replace
execute as @e[tag=conduitprojectile] run schedule function bro:scythe/trident/conduit_buffer1 6s replace
execute as @e[tag=conduitprojectile] run schedule function bro:scythe/trident/conduit_buffer2 8s replace
execute as @e[tag=conduitprojectile] run schedule function bro:scythe/trident/conduit_remove0 8.5s replace