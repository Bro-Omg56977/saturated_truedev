#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add rage_chance dummy
execute store result score @s rage_chance run random value 1..5

# adds tag and plays sfx

execute if score @s rage_chance matches 1 if score @s soul_count matches 1..10 run tag @s[tag=!rageeffect] add rageeffect
execute if score @s rage_chance matches 1 if score @s soul_count matches 1..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=rageeffect]
execute if score @s rage_chance matches 1 if score @s soul_count matches 1..10 run playsound minecraft:entity.warden.listening_angry ambient @s[tag=rageeffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

execute as @e[tag=rageeffect] at @s run particle minecraft:raid_omen ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=rageeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=rageeffect] at @s run particle minecraft:raid_omen ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=rageeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=rageeffect] at @s run particle minecraft:raid_omen ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=rageeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=rageeffect] at @s run particle minecraft:raid_omen ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=rageeffect] run effect give @s minecraft:strength 10 2 false
execute as @e[tag=rageeffect] run effect give @s minecraft:speed 10 2 false
execute as @e[tag=rageeffect] at @s run effect give @e[tag=!rageeffect,distance=..10] slowness 10 4 false
execute as @e[tag=rageeffect] at @s run effect give @e[tag=!rageeffect,distance=..10] weakness 10 4 false
execute as @e[tag=rageeffect] at @s run tellraw @s "§1One Soul has been consumed"
execute as @e[tag=rageeffect] run scoreboard players remove @e soul_count 1
execute as @e[tag=rageeffect] run function bro:scythe/rage_remove