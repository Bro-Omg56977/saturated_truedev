# adds tag and plays sfx

execute if score @s soul_count matches 10 run tag @s[tag=!atomsliceeffect] add atomsliceeffect
execute if score @s soul_count matches 10 run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=atomsliceeffect] ~ ~ ~ 1 1
execute if score @s soul_count matches 10 run playsound minecraft:entity.warden.sonic_charge ambient @s[tag=atomsliceeffect] ~ ~ ~ 1 0.75

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

execute as @e[tag=atomsliceeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.15 10
execute as @e[tag=atomsliceeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.15 10
execute as @e[tag=atomsliceeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.15 10
execute as @e[tag=atomsliceeffect] at @s run particle minecraft:explosion_emitter ~ ~1.4 ~ 0 0 0 0.15 10
execute as @e[tag=atomsliceeffect] at @s run tag @e[tag=!atomsliceeffect,distance=..30] add atomsliceeffects
execute as @e[tag=atomsliceeffect] at @s run effect give @e[tag=!atomsliceeffect,distance=..30] minecraft:slowness 2 10 false
execute as @e[tag=atomsliceeffect] at @s run effect give @e[tag=atomsliceeffect] minecraft:resistance 2 10 true
execute as @e[tag=atomsliceeffect] at @s run tellraw @s "§cAll Souls has been consumed"
execute as @e[tag=atomsliceeffect] run scoreboard players remove @e soul_count 10
execute as @e[tag=atomsliceeffect] run function bro:scythe/slice_remove