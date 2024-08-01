#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add vampirism_chance dummy
execute store result score @s vampirism_chance run random value 1..5

# adds tag and plays sfx

execute if score @s vampirism_chance matches 1 if score @s soul_count matches 1..10 run tag @s[tag=!vampirismeffect] add vampirismeffect
execute if score @s vampirism_chance matches 1 if score @s soul_count matches 1..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=vampirismeffect]

# Display particles when effect, then adds a soul to the count

playsound minecraft:ambient.soul_sand_valley.mood ambient @s[tag=vampirismeffect]
execute as @e[tag=vampirismeffect] at @s run particle minecraft:trial_spawner_detection_ominous ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=vampirismeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=vampirismeffect] at @s run particle minecraft:trial_spawner_detection_ominous ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=vampirismeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=vampirismeffect] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=vampirismeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=vampirismeffect] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=vampirismeffect] run effect give @s minecraft:regeneration 10 4 false
execute as @e[tag=vampirismeffect] at @s run effect give @e[tag=!vampirismeffect,distance=..10] wither 10 4 false
execute as @e[tag=vampirismeffect] run scoreboard players remove @e soul_count 1
execute as @e[tag=vampirismeffect] run function bro:scythe/vampirism_remove1