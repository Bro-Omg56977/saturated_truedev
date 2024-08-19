# Display particles when implosion, then implode
playsound minecraft:block.bell.resonate ambient @s[tag=implosioneffect]
execute as @e[tag=implosioneffect] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=implosioneffect] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=implosioneffect] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~-0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=implosioneffect] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~-0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=implosioneffect] at @s run particle minecraft:block{block_state:{Name:red_concrete}} ~ ~1 ~ 0 0 0 1 10
execute as @e[tag=implosioneffect] at @s run particle minecraft:sweep_attack ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=implosioneffect] at @s run particle minecraft:sweep_attack ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=implosion] unless entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 1
execute as @e[tag=implosion] if entity @s[type=#minecraft:undead] run effect give @s instant_health 1 1
execute as @e[tag=implosion2] unless entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 2
execute as @e[tag=implosion2] if entity @s[type=#minecraft:undead] run effect give @s instant_health 1 2
execute as @e[tag=implosion3] unless entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 3
execute as @e[tag=implosion3] if entity @s[type=#minecraft:undead] run effect give @s instant_health 1 3
execute as @e[tag=implosion4] unless entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 4
execute as @e[tag=implosion4] if entity @s[type=#minecraft:undead] run effect give @s instant_health 1 4
execute as @e[tag=implosioneffect] run function bro:magic/implosion_remove