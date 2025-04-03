# Display particles when effect
execute as @e[tag=sattimeaccelenemyeffect] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=sattimeaccelenemyeffect] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=sattimeaccelenemyeffect] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~-0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=sattimeaccelenemyeffect] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~-0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=sattimeaccelenemyeffect] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~ ~1 ~ 0 0 0 1 10
execute as @e[tag=sattimeaccelenemyeffect] at @s run particle minecraft:sweep_attack ~ ~1.4 ~ 0 0 0 0 10

#damages the other enemies
execute as @e[tag=sattimeaccelenemyeffect] at @s run effect give @s[type=!#minecraft:undead] instant_damage 1 1
execute as @e[tag=sattimeaccelenemyeffect] at @s run effect give @s[type=#minecraft:undead] instant_health 1 1

#creates and sets a scoreboard
execute as @e[tag=sattimeacceleffect] at @s run scoreboard objectives add sat.timeaccel.0 dummy
execute as @e[tag=sattimeacceleffect] at @s run scoreboard players set @s sat.timeaccel.0 1

#schedules the next functions
execute as @e[tag=sattimeaccelenemyeffect] run function bro:magic/timeaccel_remove0
execute as @e[tag=sattimeacceleffect] run schedule function bro:magic/timeaccel_buffer 5 replace
execute as @e[tag=sattimeacceleffect] run schedule function bro:magic/timeaccel_buffer0 4s replace
execute as @e[tag=sattimeacceleffect] run schedule function bro:magic/timeaccel_stop 150s replace