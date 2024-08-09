# Display particles when effect, then summons a husk
execute as @e[tag=summonabuddy3] at @s run particle block{block_state:{Name:bone_block}} ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=summonabuddy3] at @s run particle block{block_state:{Name:bone_block}} ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=summonabuddy3] at @s run particle block{block_state:{Name:bone_block}} ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=summonabuddy3] at @s run particle block{block_state:{Name:bone_block}} ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=summonabuddy3] at @s run particle block{block_state:{Name:bone_block}} ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=summonabuddy3] at @s run particle block{block_state:{Name:bone_block}} ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=summonabuddy3] at @s run particle block{block_state:{Name:bone_block}} ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=summonabuddy3] at @s run scoreboard objectives add skeletonbuddy_randomizer dummy
execute as @e[tag=summonabuddy3] at @s run execute store result score @s skeletonbuddy_randomizer run random value 1..2
execute as @e[tag=summonabuddy3] at @s if score @s skeletonbuddy_randomizer matches 1 run summon skeleton ~ ~ ~ {CustomName:'[{"text":"Brittle Thrall"}]',Health:10,PersistenceRequired:1b,Tags:["battlethrall","resident","weakers"],Team:skeletown,active_effects:[{id:strength,duration:999999,amplifier:2,show_particles:0b}],attributes:[{id:"generic.max_health",base:10f}]}
execute as @e[tag=summonabuddy3] at @s if score @s skeletonbuddy_randomizer matches 2 run summon skeleton ~ ~ ~ {CustomName:'[{"text":"Brittle Thrall"}]',Health:10,PersistenceRequired:1b,Tags:["battlethrall","resident","weakers"],Team:skeletown,active_effects:[{id:speed,duration:999999,amplifier:2,show_particles:0b}],attributes:[{id:"generic.max_health",base:10f}]}
execute as @e[tag=summonabuddy3] run schedule function bro:enemy/kill_thralls 10s replace
execute as @e[tag=summonabuddy3] run function bro:enemy/summon_weak_skeleton_remove
