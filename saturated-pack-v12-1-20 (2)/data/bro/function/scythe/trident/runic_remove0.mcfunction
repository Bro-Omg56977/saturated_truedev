# plays particles and does the damage
execute as @e[tag=runicprojectile] at @s run particle minecraft:portal ~0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=runicprojectile] at @s run particle minecraft:portal ~0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=runicprojectile] at @s run particle minecraft:portal ~-0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=runicprojectile] at @s run particle minecraft:portal ~-0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=runicprojectile] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1 10
execute as @e[tag=runicprojectile] at @s run particle minecraft:falling_dust{block_state:{Name:redstone_block}} ~ ~1.4 ~ 0 0 0 0 10
execute as @e[tag=runicprojectile] at @s run particle minecraft:gust_emitter_large ~ ~1.4 ~ 0 0 0 0 1
execute as @e[tag=runicprojectile,tag=!runicimmune] at @s run summon end_crystal ~ ~ ~ {CustomName:'[{"text":"Unstable Runic Data"}]',Tags:["runicdetonate"]}
execute as @e[tag=runicprojectile] at @s run effect give @e[tag=runicprojectile,type=!#minecraft:undead] minecraft:instant_damage 1 10 false
execute as @e[tag=runicprojectile] at @s run effect give @e[tag=runicprojectile,type=#minecraft:undead] minecraft:instant_health 1 10 false
execute as @e[tag=runicimmune] run schedule function bro:scythe/trident/runid_detonate 10s replace
execute as @e[tag=runicimmune] run function bro:scythe/trident/runic_remove1