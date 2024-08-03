
execute as @e[tag=atomsliceeffects] at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @s[tag=atomsliceeffects] ~ ~ ~ 3 0.1
execute as @e[tag=atomsliceeffects] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=atomsliceeffects] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=atomsliceeffects] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~-0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=atomsliceeffects] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~-0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=atomsliceeffects] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~ ~1 ~ 0 0 0 1 10
execute as @e[tag=atomsliceeffects] at @s run particle minecraft:sweep_attack ~ ~1.4 ~ 0 0 0 0 10
execute as @e[tag=atomsliceeffects] at @s run particle minecraft:block{block_state:{Name:black_concrete}} ~ ~0.6 ~ 0 0 0 1 10
execute as @e[tag=atomsliceeffects] at @s run effect give @e[tag=atomsliceeffects,type=!#minecraft:undead] minecraft:instant_damage 1 10 false
execute as @e[tag=atomsliceeffects] at @s run effect give @e[tag=atomsliceeffects,type=#minecraft:undead] minecraft:instant_health 1 10 false
execute as @e[tag=atomsliceeffects] run function bro:scythe/slice_remove1