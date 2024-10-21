#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add sat.tool.chance dummy
execute store result score @s sat.tool.chance run random value 1..48

# adds tag and plays sfx

execute if score @s sat.tool.chance matches 1 if score @s soul_count matches 2..10 run tag @s[tag=!satfevereffect] add satfevereffect
execute if score @s sat.tool.chance matches 1 if score @s soul_count matches 2..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=satfevereffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound entity.elder_guardian.curse ambient @s[tag=satfevereffect] ~ ~ ~ 0.25
execute as @e[tag=satfevereffect] at @s run particle minecraft:crit ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=satfevereffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satfevereffect] at @s run particle minecraft:crit ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=satfevereffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satfevereffect] at @s run particle minecraft:crit ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=satfevereffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=satfevereffect] at @s run particle minecraft:crit ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=satfevereffect] at @s run effect give @s minecraft:haste 20 4 true
execute as @e[tag=satfevereffect] at @s run effect give @s minecraft:saturation 20 1 true
execute as @e[tag=satfevereffect] at @s run tellraw @s "§9Two Souls has been consumed"
execute as @e[tag=satfevereffect] run scoreboard players remove @e soul_count 2
execute as @e[tag=satfevereffect] run function bro:scythe/tools/fever_remove