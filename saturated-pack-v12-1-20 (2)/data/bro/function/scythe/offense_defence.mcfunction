#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add offense_defence_chance dummy
execute store result score @s offense_defence_chance run random value 1..10

# adds tag and plays sfx

execute if score @s offense_defence_chance matches 1 if score @s soul_count matches 2..10 run tag @s[tag=!offensedefenceeffect] add offensedefenceeffect
execute if score @s offense_defence_chance matches 1 if score @s soul_count matches 2..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=offensedefenceeffect]
execute if score @s offense_defence_chance matches 1 if score @s soul_count matches 2..10 run playsound minecraft:block.anvil.land ambient @s[tag=offensedefenceeffect] ~ ~ ~ 1 0.5

# Display particles when effect, then adds a soul to the count


execute as @e[tag=offensedefenceeffect] at @s run particle minecraft:enchanted_hit ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=offensedefenceeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=offensedefenceeffect] at @s run particle minecraft:enchanted_hit ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=offensedefenceeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=offensedefenceeffect] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=offensedefenceeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=offensedefenceeffect] at @s run particle minecraft:enchanted_hit ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=offensedefenceeffect] run effect give @s minecraft:saturation 15 2 false
execute as @e[tag=offensedefenceeffect] run effect give @s minecraft:resistance 15 4 false
execute as @e[tag=offensedefenceeffect] at @s run effect give @e[tag=!offensedefenceeffect,distance=..15] minecraft:hunger 15 4 false
execute as @e[tag=offensedefenceeffect] at @s run tellraw @s "§9Two Souls has been consumed"
execute as @e[tag=offensedefenceeffect] run scoreboard players remove @e soul_count 2
execute as @e[tag=offensedefenceeffect] run function bro:scythe/offense_defence_remove