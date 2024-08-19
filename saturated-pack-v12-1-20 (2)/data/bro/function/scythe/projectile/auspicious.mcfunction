#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add auspicious_chance dummy
execute store result score @s auspicious_chance run random value 1..10

# adds tag and plays sfx

execute if score @s auspicious_chance matches 1 if score @s soul_count matches 2..10 run tag @s[tag=!auspiciouseffect] add auspiciouseffect
execute if score @s auspicious_chance matches 1 if score @s soul_count matches 2..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=auspiciouseffect]
execute if score @s auspicious_chance matches 1 if score @s soul_count matches 2..10 run scoreboard objectives add auspicious_randomizer dummy
execute if score @s auspicious_chance matches 1 if score @s soul_count matches 2..10 run execute store result score @s auspicious_randomizer run random value 1..7

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound entity.glow_squid.squirt ambient @s[tag=auspiciouseffect]
execute as @e[tag=auspiciouseffect] at @s run particle minecraft:cherry_leaves ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=auspiciouseffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=auspiciouseffect] at @s run particle minecraft:cherry_leaves ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=auspiciouseffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=auspiciouseffect] at @s run particle minecraft:cherry_leaves ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=auspiciouseffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=auspiciouseffect] at @s run particle minecraft:cherry_leaves ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=auspiciouseffect] at @s run effect give @s minecraft:resistance 15 1 true
execute if score @s auspicious_randomizer matches 1 run execute as @e[tag=auspiciouseffect] at @s run effect give @s minecraft:regeneration 15 3 true
execute if score @s auspicious_randomizer matches 2 run execute as @e[tag=auspiciouseffect] at @s run effect give @s minecraft:strength 15 3 true
execute if score @s auspicious_randomizer matches 3 run execute as @e[tag=auspiciouseffect] at @s run effect give @s minecraft:saturation 15 3 true
execute if score @s auspicious_randomizer matches 4 run execute as @e[tag=auspiciouseffect] at @s run effect give @s minecraft:speed 15 3 true
execute if score @s auspicious_randomizer matches 5 run execute as @e[tag=auspiciouseffect] at @s run effect give @s minecraft:haste 15 3 true
execute if score @s auspicious_randomizer matches 6 run execute as @e[tag=auspiciouseffect] at @s run effect give @s minecraft:absorption 15 3 true
execute if score @s auspicious_randomizer matches 7 run execute as @e[tag=auspiciouseffect] at @s run effect give @s minecraft:health_boost 15 3 true
execute as @e[tag=auspiciouseffect] at @s run tellraw @s "§9Two Souls has been consumed"
execute as @e[tag=auspiciouseffect] run scoreboard players remove @e soul_count 2
execute as @e[tag=auspiciouseffect] run function bro:scythe/projectile/auspicious_remove