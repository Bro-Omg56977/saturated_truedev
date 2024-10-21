#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add zoom_chance dummy
execute store result score @s zoom_chance run random value 1..15

# adds tag and plays sfx

execute if score @s zoom_chance matches 1 if score @s soul_count matches 2..10 run tag @s[tag=!zoomeffect] add zoomeffect
execute if score @s zoom_chance matches 1 if score @s soul_count matches 2..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=zoomeffect]
execute if score @s zoom_chance matches 1 if score @s soul_count matches 2..10 run playsound minecraft:entity.breeze.charge ambient @s[tag=zoomeffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

execute as @e[tag=zoomeffect] at @s run particle minecraft:gust_emitter_small ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=zoomeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=zoomeffect] at @s run particle minecraft:gust_emitter_small ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=zoomeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=zoomeffect] at @s run particle minecraft:gust_emitter_small ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=zoomeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=zoomeffect] at @s run particle minecraft:gust_emitter_small ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=zoomeffect] run effect give @s minecraft:speed 10 0 true
execute as @e[tag=zoomeffect] run effect give @s minecraft:levitation 1 20 true
execute as @e[tag=zoomeffect] run effect give @s minecraft:slow_falling 15 1 true
execute as @e[tag=zoomeffect] at @s run effect give @e[tag=!zoomeffect,distance=..15] minecraft:wind_charged 15 2 false
execute as @e[tag=zoomeffect] at @s run tellraw @s "§9Two Souls has been consumed"
execute as @e[tag=zoomeffect] run scoreboard players remove @e soul_count 2
execute as @e[tag=zoomeffect] run function bro:scythe/zoom_remove