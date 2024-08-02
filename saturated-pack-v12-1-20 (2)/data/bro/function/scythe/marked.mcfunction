#makes it so that entity hit has around a 5% chance of the effect actually happening

scoreboard objectives add markify_chance dummy
execute store result score @s markify_chance run random value 1..20

# adds tag and plays sfx

execute if score @s markify_chance matches 1 if score @s soul_count matches 5..10 run tag @s[tag=!markereffect] add markereffect
execute if score @s markify_chance matches 1 if score @s soul_count matches 5..10 run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=markereffect] ~ ~ ~ 1 1
execute if score @s markify_chance matches 1 if score @s soul_count matches 5..10 run playsound minecraft:entity.player.breath ambient @s[tag=markereffect] ~ ~ ~ 1 0.75

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

execute as @e[tag=markereffect] at @s run particle minecraft:trial_omen ~0.2 ~1 ~0.2 0 0 0 0.15 10
execute as @e[tag=markereffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.15 10
execute as @e[tag=markereffect] at @s run particle minecraft:trial_omen ~-0.2 ~1 ~0.2 0 0 0 0.15 10
execute as @e[tag=markereffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.15 10
execute as @e[tag=markereffect] at @s run particle minecraft:trial_omen ~ ~1 ~ 0 0 0 0.15 10
execute as @e[tag=markereffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.15 10
execute as @e[tag=markereffect] at @s run particle minecraft:trial_omen ~ ~0.6 ~ 0 0 0 0.15 10
execute as @e[tag=markereffect] at @s run tag @e[tag=!markereffect,distance=..20] add markereffects
execute as @e[tag=markereffect] at @s run effect give @e[tag=!markereffect,distance=..20] minecraft:weakness 20 4 false
execute as @e[tag=markereffect] at @s run effect give @e[tag=!markereffect,distance=..20] minecraft:slowness 20 4 false
execute as @e[tag=markereffect] at @s run effect give @e[tag=!markereffect,distance=..20] minecraft:mining_fatigue 20 4 false
execute as @e[tag=markereffect] at @s run effect give @e[tag=!markereffect,distance=..20] minecraft:hunger 20 4 false
execute as @e[tag=markereffect] at @s run effect give @e[tag=!markereffect,distance=..20] minecraft:blindness 20 4 false
execute as @e[tag=markereffect] at @s run effect give @e[tag=!markereffect,distance=..20] minecraft:glowing 20 4 false
execute as @e[tag=markereffect] at @s run effect give @e[tag=!markereffect,distance=..20] minecraft:darkness 20 4 false
execute as @e[tag=markereffect] at @s run tellraw @s "§5Five Souls has been consumed"
execute as @e[tag=markereffect] run scoreboard players remove @e soul_count 5
execute as @e[tag=markereffect] run function bro:scythe/marked_remove