execute as @e[tag=feareffect] at @s run particle minecraft:falling_dust{block_state:{Name:gray_candle}} ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=feareffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=feareffect] at @s run particle minecraft:falling_dust{block_state:{Name:gray_candle}} ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=feareffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=feareffect] at @s run particle minecraft:falling_dust{block_state:{Name:gray_candle}} ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=feareffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=feareffect] at @s run particle minecraft:falling_dust{block_state:{Name:gray_candle}} ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=fearprojectile,tag=!feareffect] at @s run tag @e[tag=!fearprojectile,tag=!feareffect,distance=..5] add fearprojectile
execute as @e[tag=feareffect] at @s run tag @e[tag=!fearprojectile,tag=!feareffect,distance=..5] add fearprojectile
execute as @e[tag=fearprojectile] at @s run particle minecraft:elder_guardian ~ ~0.8 ~ 0 0 0 0 1
execute as @e[tag=fearprojectile] at @s run playsound entity.elder_guardian.curse ambient 1 ~ ~ ~ 0.5
execute as @e[tag=fearprojectile,tag=!feareffect] at @s run effect give @s minecraft:darkness 10 0
execute as @e[tag=fearprojectile,tag=!feareffect] at @s run effect give @s minecraft:slowness 10 0
execute as @e[tag=fearprojectile,tag=!feareffect] at @s run effect give @s minecraft:weakness 10 0
execute as @e[tag=fearprojectile,tag=!feareffect] at @s run effect give @s minecraft:mining_fatigue 10 3
execute as @e[tag=feareffect] at @s run tellraw @s "§1One Soul has been consumed"
execute as @e[tag=feareffect] run scoreboard players remove @e soul_count 1
execute as @e[tag=feareffect] run function bro:scythe/trident/fear_remove