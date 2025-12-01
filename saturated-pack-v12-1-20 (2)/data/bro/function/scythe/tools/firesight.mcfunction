#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add sat.tool.chance dummy
execute store result score @s sat.tool.chance run random value 1..24

# adds tag and plays sfx

execute if score @s sat.tool.chance matches 1 if score @s soul_count matches 1..10 run tag @s[tag=!satfiresighteffect] add satfiresighteffect
execute if score @s sat.tool.chance matches 1 if score @s soul_count matches 1..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=satfiresighteffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound ambient.nether_wastes.mood ambient @s[tag=satfiresighteffect]
execute as @e[tag=satfiresighteffect] at @s run particle minecraft:flame ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=satfiresighteffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satfiresighteffect] at @s run particle minecraft:flame ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=satfiresighteffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satfiresighteffect] at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=satfiresighteffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=satfiresighteffect] at @s run particle minecraft:flame ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=satfiresighteffect] at @s run effect give @s minecraft:fire_resistance 15 0 true
execute as @e[tag=satfiresighteffect] at @s run effect give @s minecraft:regeneration 15 2 true
execute as @e[tag=satfiresighteffect] at @s run effect give @e[tag=!satfiresighteffect,distance=..50] glowing 10 0 false
execute as @e[tag=satfiresighteffect] at @s run title @s actionbar "§1One Soul has been consumed"
execute as @e[tag=satfiresighteffect] run scoreboard players remove @s soul_count 1
execute as @e[tag=satfiresighteffect] run function bro:scythe/tools/firesight_remove