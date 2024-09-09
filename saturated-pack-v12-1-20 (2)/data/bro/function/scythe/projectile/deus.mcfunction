#makes it so that entity hit has around a 20% chance of the effect actually happening

# adds tag and plays sfx

execute if score @s soul_count matches 10 run tag @s[tag=!machinaeffect] add machinaeffect
execute if score @s soul_count matches 10 run tag @s[tag=!machinasource] add machinasource
execute if score @s soul_count matches 10 run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=machinaeffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound entity.warden.sonic_charge ambient @s[tag=machinaeffect] ~ ~ ~ 1 0.5
execute as @e[tag=machinaeffect] at @s run particle minecraft:glow ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=machinaeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=machinaeffect] at @s run particle minecraft:flash ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=machinaeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=machinaeffect] at @s run particle minecraft:glow ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=machinaeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=machinaeffect] at @s run particle minecraft:flash ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=machinaeffect] at @s run effect give @s levitation 2 15 true
execute as @e[tag=machinaeffect] at @s run effect give @s slow_falling 25 20 true
execute as @e[tag=machinaeffect] at @s run effect give @s resistance 10 20 true
execute as @e[tag=machinaeffect] at @s run tellraw @s "§cAll Souls has been consumed"
execute as @e[tag=machinaeffect] run scoreboard players remove @e soul_count 10
execute as @e[tag=machinaeffect] run schedule function bro:scythe/projectile/deus_activate 2s replace
execute as @e[tag=machinaeffect] run function bro:scythe/projectile/deus_remove1