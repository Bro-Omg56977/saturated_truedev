#swipes at nearby enemies
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run tag @e[tag=!sattimeacceleffect,type=!item,distance=..5] add sattimeaccelenemyeffectbuffer
execute as @e[tag=sattimeaccelenemyeffectbuffer] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=sattimeaccelenemyeffectbuffer] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=sattimeaccelenemyeffectbuffer] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~-0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=sattimeaccelenemyeffectbuffer] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~-0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=sattimeaccelenemyeffectbuffer] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~ ~1 ~ 0 0 0 1 10
execute as @e[tag=sattimeaccelenemyeffectbuffer] at @s run particle minecraft:sweep_attack ~ ~1.4 ~ 0 0 0 0 10

#debuffs those enemies
execute as @e[tag=sattimeaccelenemyeffectbuffer] at @s run effect give @s slowness 4 0
execute as @e[tag=sattimeaccelenemyeffectbuffer] at @s run effect give @s[type=!#minecraft:undead] instant_damage 1 0 true
execute as @e[tag=sattimeaccelenemyeffectbuffer] at @s run effect give @s[type=#minecraft:undead] instant_health 1 0 true

#remove the tag
execute as @e[tag=sattimeaccelenemyeffectbuffer] at @s run tag @s remove sattimeaccelenemyeffectbuffer

#restarts the function
execute as @e[tag=sattimeacceleffect] at @s run execute if score @s sat.timeaccel.0 matches 1 run schedule function bro:magic/timeaccel_buffer0 4s replace