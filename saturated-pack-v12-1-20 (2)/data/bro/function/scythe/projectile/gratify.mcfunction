#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add gratify_chance dummy
execute store result score @s gratify_chance run random value 1..5

# adds tag and plays sfx

execute if score @s gratify_chance matches 1 if score @s soul_count matches 1..10 run tag @s[tag=!gratifyeffect] add gratifyeffect
execute if score @s gratify_chance matches 1 if score @s soul_count matches 1..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=gratifyeffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound minecraft:ambient.soul_sand_valley.mood ambient @s[tag=gratifyeffect]
execute as @e[tag=gratifyeffect] at @s run particle minecraft:dust_plume ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=gratifyeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=gratifyeffect] at @s run particle minecraft:dust_plume ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=gratifyeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=gratifyeffect] at @s run particle minecraft:dust_plume ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=gratifyeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=gratifyeffect] at @s run particle minecraft:dust_plume ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=gratifyeffect] at @s run effect give @s minecraft:regeneration 10 1 true
execute as @e[tag=gratifyeffect] at @s run effect give @s minecraft:instant_health 1 0 false
execute as @e[tag=gratifyeffect] at @s run title @s actionbar "§1One Soul has been consumed"
execute as @e[tag=gratifyeffect] run scoreboard players remove @s soul_count 1
execute as @e[tag=gratifyeffect] run function bro:scythe/projectile/gratify_remove