execute as @e[tag=adversityeffect] at @s run particle minecraft:flame ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=adversityeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=adversityeffect] at @s run particle minecraft:flame ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=adversityeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=adversityeffect] at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=adversityeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=adversityeffect] at @s run particle minecraft:flame ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=adversityarrow,tag=!adversityeffect] at @s run tag @e[tag=!adversityarrow,tag=!adversityeffect,distance=..10] add adversityarrow
execute as @e[tag=adversityarrow,tag=!adversityeffect] unless entity @e[type=#undead] run effect give @s minecraft:poison 15 1
execute as @e[tag=adversityarrow,tag=!adversityeffect] unless entity @e[type=#undead] run effect give @s minecraft:wither 15 1
execute if score @s adversity_randomizer matches 1 run execute as @e[tag=adversityarrow,tag=!adversityeffect] at @s run effect give @s minecraft:mining_fatigue 15 3
execute if score @s adversity_randomizer matches 2 run execute as @e[tag=adversityarrow,tag=!adversityeffect] at @s run effect give @s minecraft:hunger 15 3
execute if score @s adversity_randomizer matches 3 run execute as @e[tag=adversityarrow,tag=!adversityeffect] at @s run effect give @s minecraft:weakness 15 3
execute if score @s adversity_randomizer matches 4 run execute as @e[tag=adversityarrow,tag=!adversityeffect] at @s run effect give @s minecraft:slowness 15 3
execute if score @s adversity_randomizer matches 5 run execute as @e[tag=adversityarrow,tag=!adversityeffect] at @s run effect give @s minecraft:darkness 15 3
execute if score @s adversity_randomizer matches 6 run execute as @e[tag=adversityarrow,tag=!adversityeffect] at @s run effect give @s minecraft:nausea 15 3
execute as @e[tag=adversityeffect] at @s run tellraw @s "§9Two Souls has been consumed"
execute as @e[tag=adversityeffect] run scoreboard players remove @e soul_count 2
execute as @e[tag=adversityeffect] run function bro:scythe/projectile/adversity_remove