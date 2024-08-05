execute as @e[tag=degradeeffect] at @s run particle minecraft:falling_dust{block_state:{Name:black_concrete_powder}} ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=degradeeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=degradeeffect] at @s run particle minecraft:falling_dust{block_state:{Name:black_concrete_powder}} ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=degradeeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=degradeeffect] at @s run particle minecraft:falling_dust{block_state:{Name:black_concrete_powder}} ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=degradeeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=degradeeffect] at @s run particle minecraft:falling_dust{block_state:{Name:black_concrete_powder}} ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=degradearrow,tag=!degradeeffect] at @s run tag @e[tag=!degradearrow,tag=!degradeeffect,distance=..5] add degradearrow
execute as @e[tag=degradearrow,tag=!degradeeffect] at @s run effect give @s minecraft:wither 10 2
execute as @e[tag=degradearrow,tag=!degradeeffect] at @s if entity @s[type=#minecraft:undead] run effect give @s instant_health 1 1
execute as @e[tag=degradearrow,tag=!degradeeffect] at @s if entity @s[type=!#minecraft:undead] run effect give @s instant_damage 1 1
execute as @e[tag=degradeeffect] at @s run tellraw @s "§1One Soul has been consumed"
execute as @e[tag=degradeeffect] run scoreboard players remove @e soul_count 1
execute as @e[tag=degradeeffect] run function bro:scythe/projectile/soul_degrade_remove