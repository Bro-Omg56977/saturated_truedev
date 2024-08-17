#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add satrandomizer_chance dummy
execute store result score @s satrandomizer_chance run random value 1..2
# adds tag and plays sfx

execute if score @s satrandomizer_chance matches 1 run tag @s[tag=!satrandomizereffect] add satrandomizereffect
execute if score @s satrandomizer_chance matches 1 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=satrandomizereffect]
execute if score @s satrandomizer_chance matches 1 run scoreboard objectives add satrandomizer dummy
execute if score @s satrandomizer_chance matches 1 run execute store result score @s satrandomizer run random value 1..20

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound entity.glow_squid.squirt ambient @s[tag=satrandomizereffect]
execute as @e[tag=satrandomizereffect] at @s run particle minecraft:cherry_leaves ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=satrandomizereffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satrandomizereffect] at @s run particle minecraft:flame ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=satrandomizereffect] at @s run particle minecraft:flash ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satrandomizereffect] at @s run particle minecraft:falling_honey ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=satrandomizereffect] at @s run particle minecraft:campfire_signal_smoke ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=satrandomizereffect] at @s run particle minecraft:witch ~ ~0.6 ~ 0 0 0 0.01 10
execute if score @s satrandomizer matches 1 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:regeneration 15 1 true
execute if score @s satrandomizer matches 2 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:strength 15 1 true
execute if score @s satrandomizer matches 3 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:saturation 15 1 true
execute if score @s satrandomizer matches 4 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:speed 15 1 true
execute if score @s satrandomizer matches 5 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:haste 15 1 true
execute if score @s satrandomizer matches 6 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:absorption 15 1 true
execute if score @s satrandomizer matches 7 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:health_boost 15 1 true
execute if score @s satrandomizer matches 8 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:poison 15 1 true
execute if score @s satrandomizer matches 9 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:weakness 15 1 true
execute if score @s satrandomizer matches 10 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:hunger 15 1 true
execute if score @s satrandomizer matches 11 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:slowness 15 1 true
execute if score @s satrandomizer matches 12 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:mining_fatigue 15 1 true
execute if score @s satrandomizer matches 13 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:glowing 15 1 true
execute if score @s satrandomizer matches 14 run execute as @e[tag=satrandomizereffect] at @s run effect give @s minecraft:darkness 15 1 true
execute if score @s satrandomizer matches 15 run execute as @e[tag=satrandomizereffect] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:block,block_state:{Name:slime_block}},Radius:1,RadiusPerTick:0.15,Duration:40,potion_contents:{custom_effects:[{id:poison,duration:600,amplifier:1,ambient:1b,show_particles:1b,show_icon:1b}]}}
execute if score @s satrandomizer matches 16 run execute as @e[tag=satrandomizereffect] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:cherry_leaves},Radius:1,RadiusPerTick:0.15,Duration:40,potion_contents:{custom_effects:[{id:regeneration,duration:600,amplifier:1,ambient:1b,show_particles:1b,show_icon:1b}]}}
execute if score @s satrandomizer matches 17 run execute as @e[tag=satrandomizereffect] at @s run summon lightning_bolt ~ ~ ~
execute if score @s satrandomizer matches 18 run execute as @e[tag=satrandomizereffect] at @s run summon tnt ~ ~ ~ {fuse:1}
execute if score @s satrandomizer matches 19 run execute as @e[tag=satrandomizereffect] at @s run summon end_crystal ~ ~ ~
execute if score @s satrandomizer matches 20 run execute as @e[tag=satrandomizereffect] at @s run summon creeper ~ ~ ~
execute as @e[tag=satrandomizereffect] run function bro:magic/basic/randomizer_remove