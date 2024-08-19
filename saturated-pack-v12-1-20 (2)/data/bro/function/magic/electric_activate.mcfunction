# Display particles when activated, then strike
playsound minecraft:block.bell.resonate ambient @s[tag=powderofguneffect]
execute as @e[tag=electriceffect] at @s run particle minecraft:campfire_cosy_smoke ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=electriceffect] at @s run particle minecraft:campfire_cosy_smoke ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=electriceffect] at @s run particle minecraft:campfire_cosy_smoke ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=electriceffect] at @s run particle minecraft:campfire_cosy_smoke ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=electriceffect] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=electriceffect] at @s run particle minecraft:campfire_cosy_smoke ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=electriceffect] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=electric] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[tag=electric] run effect give @s weakness 30 2 false
execute as @e[tag=electric2] at @s run summon minecraft:lightning_bolt ~-0.2 ~1 ~0.2
execute as @e[tag=electric2] at @s run summon minecraft:lightning_bolt ~0.2 ~1 ~-0.2
execute as @e[tag=electric2] run effect give @s weakness 30 4 false
execute as @e[tag=electric3] at @s run summon minecraft:lightning_bolt ~-0.2 ~1 ~0.2
execute as @e[tag=electric3] at @s run summon minecraft:lightning_bolt ~-0.2 ~1 ~0.2
execute as @e[tag=electric3] at @s run summon minecraft:lightning_bolt ~-0.2 ~1 ~0.2
execute as @e[tag=electric3] run effect give @s weakness 30 6 false
execute as @e[tag=electric4] at @s run summon minecraft:lightning_bolt ~-0.2 ~1 ~0.2
execute as @e[tag=electric4] at @s run summon minecraft:lightning_bolt ~-0.2 ~1 ~0.2
execute as @e[tag=electric4] at @s run summon minecraft:lightning_bolt ~0.2 ~1 ~-0.2
execute as @e[tag=electric4] at @s run summon minecraft:lightning_bolt ~0.2 ~1 ~-0.2
execute as @e[tag=electric4] run effect give @s weakness 30 8 false
execute as @e[tag=electriceffect] run function bro:magic/electric_remove