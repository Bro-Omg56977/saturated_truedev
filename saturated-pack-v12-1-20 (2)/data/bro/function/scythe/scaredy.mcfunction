#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add vaulting_chance dummy
execute store result score @s vaulting_chance run random value 1..5

# adds tag and plays sfx

execute if score @s vaulting_chance matches 1 if score @s soul_count matches 1..10 run tag @s[tag=!vaultingeffect] add vaultingeffect
execute if score @s vaulting_chance matches 1 if score @s soul_count matches 1..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=vaultingeffect]
execute if score @s vaulting_chance matches 1 if score @s soul_count matches 1..10 run playsound minecraft:entity.breeze.death ambient @s[tag=vaultingeffect]

# Display particles when effect, then adds a soul to the count


execute as @e[tag=vaultingeffect] at @s run particle minecraft:gust ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=vaultingeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=vaultingeffect] at @s run particle minecraft:gust ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=vaultingeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=vaultingeffect] at @s run particle minecraft:gust ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=vaultingeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=vaultingeffect] at @s run particle minecraft:gust ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=vaultingeffect] run effect give @s minecraft:speed 10 4 false
execute as @e[tag=vaultingeffect] run effect give @s minecraft:jump_boost 10 4 false
execute as @e[tag=vaultingeffect] at @s run effect give @e[tag=!vaultingeffect,distance=..10] minecraft:slowness 10 2 false
execute as @e[tag=vaultingeffect] run scoreboard players remove @e soul_count 1
execute as @e[tag=vaultingeffect] run function bro:scythe/vaulting_remove