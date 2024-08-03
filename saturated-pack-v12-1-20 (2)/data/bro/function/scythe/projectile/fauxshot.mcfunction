#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add fauxshot_chance dummy
execute store result score @s fauxshot_chance run random value 1..20

# adds tag and plays sfx

execute if score @s fauxshot_chance matches 1 if score @s soul_count matches 5..10 run tag @s[tag=!fauxshoteffect] add fauxshoteffect
execute if score @s fauxshot_chance matches 1 if score @s soul_count matches 5..10 run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=fauxshoteffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound minecraft:entity.breeze.charge ambient @s[tag=fauxshoteffect]
execute as @e[tag=fauxshoteffect] at @s run particle minecraft:gust ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=fauxshoteffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=fauxshoteffect] at @s run particle minecraft:gust ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=fauxshoteffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=fauxshoteffect] at @s run particle minecraft:gust ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=fauxshoteffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=fauxshoteffect] at @s run particle minecraft:gust ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=fauxshoteffect] at @s run effect give @s minecraft:levitation 1 40 true
execute as @e[tag=fauxshoteffect] at @s run effect give @s minecraft:slow_falling 20 20 true
execute as @e[tag=fauxshoteffect] at @s run effect give @s minecraft:resistance 25 5 true
execute as @e[tag=fauxshoteffect] at @s run effect give @s minecraft:regeneration 20 5 true
execute as @e[tag=fauxshoteffect] at @s run effect give @s minecraft:strength 20 5 true
execute as @e[tag=fauxshoteffect] at @s run effect give @s minecraft:saturation 20 5 true
execute as @e[tag=fauxshoteffect] at @s run tellraw @s "§5Five Souls has been consumed"
execute as @e[tag=fauxshoteffect] run scoreboard players remove @e soul_count 5
execute as @e[tag=fauxshoteffect] run function bro:scythe/projectile/fauxshot_remove