#not exactly sure what to put here. i just had the realization that i could just use the same tags and scoreboards between each spell with little no to consenquence. fuuucc

execute as @e[tag=runiceffect] at @s run particle minecraft:falling_dust{block_state:{Name:redstone_block}} ~0.2 ~1 ~0.2 0 0 0 0.1 10
execute as @e[tag=runiceffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=runiceffect] at @s run particle minecraft:falling_dust{block_state:{Name:redstone_block}} ~-0.2 ~1 ~0.2 0 0 0 0.1 10
execute as @e[tag=runiceffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.1 10
execute as @e[tag=runiceffect] at @s run particle minecraft:falling_dust{block_state:{Name:redstone_block}} ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=runiceffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.1 10
execute as @e[tag=runiceffect] at @s run particle minecraft:falling_dust{block_state:{Name:redstone_block}} ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=runicprojectile,tag=!runiceffect] at @s run tag @e[tag=!runicprojectile,tag=!runiceffect,distance=..30] add runicprojectile
execute as @e[tag=runiceffect] at @s run tag @e[tag=!runicprojectile,tag=!runiceffect,distance=..30] add runicprojectile
execute as @e[tag=runicprojectile,tag=!runiceffect] at @s run effect give @s slowness 4 10 false
execute as @e[tag=runicprojectile,tag=!runiceffect] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:enchant},Radius:1,RadiusPerTick:0.05,Duration:40,potion_contents:{potion:weakness,custom_effects:[{id:weakness,duration:80,amplifier:10,ambient:1b,show_particles:1b,show_icon:1b}]}}
execute as @e[tag=runiceffect] at @s run effect give @s resistance 4 10 true
execute as @e[tag=runiceffect] at @s run tellraw @s "§cAll Souls have been consumed"
execute as @e[tag=runiceffect] run scoreboard players remove @e soul_count 10
execute as @e[tag=runiceffect] run function bro:scythe/trident/runic_remove