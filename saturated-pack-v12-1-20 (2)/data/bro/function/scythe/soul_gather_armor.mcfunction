#makes it so that entity hit has around a 10% chance of the effect actually happening

scoreboard objectives add soul_gather_armor_chance dummy
execute store result score @s soul_gather_armor_chance run random value 1..35

# adds tag and plays sfx

execute if score @s soul_gather_armor_chance matches 1 run tag @s[tag=!soulgathereffect] add soulgathereffect
execute if score @s soul_gather_armor_chance matches 1 run playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=soulgathereffect]

# Display particles when effect, then adds a soul to the count

playsound minecraft:block.bell.resonate ambient @s[tag=soulgathereffect]
execute as @e[tag=soulgathereffect] at @s run particle minecraft:sculk_soul ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:sculk_soul ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:sculk_soul ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] run scoreboard players add @e soul_count 1
execute as @e[tag=soulgathereffect] run scoreboard players set @e[scores={soul_count=11..}] soul_count 10
execute as @e[tag=soulgathereffect] run function bro:scythe/soul_gather_remove