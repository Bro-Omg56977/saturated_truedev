#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add super_chance dummy
execute store result score @s super_chance run random value 1..20

# adds tag and plays sfx

execute if score @s super_chance matches 1 if score @s soul_count matches 5..10 run tag @s[tag=!supereffect] add supereffect
execute if score @s super_chance matches 1 if score @s soul_count matches 5..10 run tag @s[tag=!supereffects] add supereffects
execute if score @s super_chance matches 1 if score @s soul_count matches 5..10 run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=supereffect]
execute if score @s super_chance matches 1 if score @s soul_count matches 5..10 run playsound minecraft:entity.warden.sonic_boom ambient @s[tag=supereffect] ~ ~ ~ 1 2

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

execute as @e[tag=supereffect] at @s run particle minecraft:glow_squid_ink ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=supereffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=supereffect] at @s run particle minecraft:glow_squid_ink ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=supereffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=supereffect] at @s run particle minecraft:glow_squid_ink ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=supereffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=supereffect] at @s run particle minecraft:glow_squid_ink ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=supereffect] run effect give @s minecraft:saturation 20 4 true
execute as @e[tag=supereffect] run effect give @s minecraft:resistance 20 4 true
execute as @e[tag=supereffect] run effect give @s minecraft:strength 20 4 true
execute as @e[tag=supereffect] run effect give @s minecraft:speed 20 4 true
execute as @e[tag=supereffect] run effect give @s minecraft:glowing 20 1 true
execute as @e[tag=supereffect] at @s run title @s actionbar "§5Five Souls has been consumed"
execute as @e[tag=supereffect] run scoreboard players remove @s soul_count 5
execute as @e[tag=supereffect] run function bro:scythe/super_remove