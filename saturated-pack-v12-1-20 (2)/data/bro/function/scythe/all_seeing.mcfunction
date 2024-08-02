#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add all_seeing_chance dummy
execute store result score @s all_seeing_chance run random value 1..5

# adds tag and plays sfx

execute if score @s all_seeing_chance matches 1 if score @s soul_count matches 1..10 run tag @s[tag=!allseeingeffect] add allseeingeffect
execute if score @s all_seeing_chance matches 1 if score @s soul_count matches 1..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=allseeingeffect]

# Display particles when effect, then adds a soul to the count

playsound minecraft:ambient.soul_sand_valley.mood ambient @s[tag=allseeingeffect]
execute as @e[tag=allseeingeffect] at @s run particle minecraft:dust_plume ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=allseeingeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=allseeingeffect] at @s run particle minecraft:dust_plume ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=allseeingeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=allseeingeffect] at @s run particle minecraft:dust_plume ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=allseeingeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=allseeingeffect] at @s run particle minecraft:dust_plume ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=allseeingeffect] at @s run effect give @e[tag=!allseeingeffect,distance=..25] minecraft:blindness 30 1 false
execute as @e[tag=allseeingeffect] at @s run effect give @e[tag=!allseeingeffect,distance=..25] minecraft:darkness 30 1 false
execute as @e[tag=allseeingeffect] at @s run effect give @e[tag=!allseeingeffect,distance=..25] minecraft:glowing 30 1 false
execute as @e[tag=allseeingeffect] at @s run tellraw @s "§1One Soul has been consumed"
execute as @e[tag=allseeingeffect] run scoreboard players remove @e soul_count 1
execute as @e[tag=allseeingeffect] run function bro:scythe/all_seeing_remove