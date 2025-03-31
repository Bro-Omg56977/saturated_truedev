#starts a scoreboard
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run scoreboard objectives add sat.elecaura.randomize dummy
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute store result score @s sat.elecaura.randomize run random value 1..4

#would start a random positioned effect
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randomize matches 1 run particle minecraft:end_rod ~0.2 ~0.5 ~0.2 0 0 0 0.1 10
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randomize matches 2 run particle minecraft:glow ~0.2 ~0.75 ~-0.2 0 0 0 0.1 10
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randomize matches 3 run particle minecraft:end_rod ~-0.2 ~1 ~0.2 0 0 0 0.1 10
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randomize matches 4 run particle minecraft:glow ~-0.2 ~1.25 ~-0.2 0 0 0 0.1 10

#refreshes the buffs the user gets
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run effect give @s strength 4 0 true
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run effect give @s resistance 4 2 true
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run effect give @s speed 4 0 true

#randomizes a scoreboard
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run scoreboard objectives add sat.elecaura.randombuffchance dummy
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute store result score @s sat.elecaura.randombuffchance run random value 1..8

#gives a random effect based on scoreboard
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randombuffchance matches 1 run effect give @s saturation 2 1 true
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randombuffchance matches 2 run effect give @s haste 2 1 true
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randombuffchance matches 3 run effect give @s jump_boost 2 1 true
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randombuffchance matches 4 run effect give @s fire_resistance 2 1 true
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randombuffchance matches 5 run effect give @s water_breathing 2 1 true
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randombuffchance matches 6 run effect give @s invisibility 2 1 true
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randombuffchance matches 7 run effect give @s dolphins_grace 2 1 true
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run execute if score @s sat.elecaura.randombuffchance matches 8 run effect give @s conduit_power 2 1 true

#restarts the function
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run schedule function bro:magic/superelec/aura_buffer1 5 replace
