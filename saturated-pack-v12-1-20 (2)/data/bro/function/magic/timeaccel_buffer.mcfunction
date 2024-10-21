#starts a scoreboard
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run scoreboard objectives add sat.timeaccel.randomize dummy
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run execute store result score @s sat.timeaccel.randomize run random value 1..4

#would start a random positioned effect
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run execute if score @s sat.timeaccel.randomize matches 1 run particle minecraft:sweep_attack ~0.2 ~0.5 ~0.2 0 0 0 0.1 1
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run execute if score @s sat.timeaccel.randomize matches 2 run particle minecraft:sweep_attack ~0.2 ~0.75 ~-0.2 0 0 0 0.1 1
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run execute if score @s sat.timeaccel.randomize matches 3 run particle minecraft:sweep_attack ~-0.2 ~1 ~0.2 0 0 0 0.1 1
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run execute if score @s sat.timeaccel.randomize matches 4 run particle minecraft:sweep_attack ~-0.2 ~1.25 ~-0.2 0 0 0 0.1 1

#refreshes the buffs the user gets
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run effect give @s strength 4 0 true
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run effect give @s resistance 4 0 true
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run effect give @s speed 4 2 true

#restarts the function
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run schedule function bro:magic/timeaccel_buffer 5 replace
