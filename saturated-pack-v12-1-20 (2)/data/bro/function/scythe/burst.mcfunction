#makes it so that entity hit has around a 5% chance of the effect actually happening

scoreboard objectives add burst_chance dummy
execute store result score @s burst_chance run random value 1..20

# adds tag and plays sfx

execute if score @s burst_chance matches 1 if score @s soul_count matches 5..10 run tag @s[tag=!bursteffect] add bursteffect
execute if score @s burst_chance matches 1 if score @s soul_count matches 5..10 run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=bursteffect] ~ ~ ~ 1 1
execute if score @s burst_chance matches 1 if score @s soul_count matches 5..10 run playsound minecraft:entity.zombie_villager.cure ambient @s[tag=bursteffect] ~ ~ ~ 1 1

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function


execute as @e[tag=bursteffect] at @s run particle minecraft:sculk_soul ~0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=bursteffect] at @s run particle minecraft:soul ~0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=bursteffect] at @s run particle minecraft:sculk_soul ~-0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=bursteffect] at @s run particle minecraft:soul ~-0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=bursteffect] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0 0 0 1 10
execute as @e[tag=bursteffect] at @s run particle minecraft:soul ~ ~1.4 ~ 0 0 0 1 10
execute as @e[tag=bursteffect] at @s run particle minecraft:sculk_soul ~ ~0.6 ~ 0 0 0 1 10
execute as @e[tag=bursteffect] run effect give @s minecraft:instant_damage 1 1 false
execute as @e[tag=bursteffect] at @s run effect give @e[tag=!bursteffect,type=!#minecraft:undead,distance=..20] instant_damage 1 3 false
execute as @e[tag=bursteffect] at @s run effect give @e[tag=!bursteffect,type=#minecraft:undead,distance=..20] instant_health 1 3 false
execute as @e[tag=bursteffect] at @s run tellraw @s "§5Five Souls has been consumed"
execute as @e[tag=bursteffect] run scoreboard players remove @e soul_count 5
execute as @e[tag=bursteffect] run function bro:scythe/burst_remove