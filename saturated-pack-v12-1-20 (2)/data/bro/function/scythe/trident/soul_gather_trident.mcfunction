#makes it so that entity hit has around a 1/15 chance of the effect actually happening

scoreboard objectives add soul_gather_trident_chance dummy
execute store result score @s soul_gather_trident_chance run random value 1..25

# adds tag and plays sfx

execute if score @s soul_gather_trident_chance matches 1 run tag @s[tag=!soulgathereffect] add soulgathereffect
execute if score @s soul_gather_trident_chance matches 1 run playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=soulgathereffect]

# Display particles when effect, then adds a soul to the count

playsound minecraft:block.bell.resonate ambient @s[tag=soulgathereffect]
execute as @e[tag=soulgathereffect] at @s run particle minecraft:sculk_soul ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:sculk_soul ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] at @s run particle minecraft:sculk_soul ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=soulgathereffect] run scoreboard players add @s soul_count 1
execute as @e[tag=soulgathereffect] run scoreboard players set @s[scores={soul_count=11..}] soul_count 10
execute if score @s soul_count matches 1 run title @s actionbar "§1Soul Count: 1"
execute if score @s soul_count matches 2 run title @s actionbar "§9Soul Count: 2"
execute if score @s soul_count matches 3 run title @s actionbar "§9Soul Count: 3"
execute if score @s soul_count matches 4 run title @s actionbar "§9Soul Count: 4"
execute if score @s soul_count matches 5 run title @s actionbar "§5Soul Count: 5"
execute if score @s soul_count matches 6 run title @s actionbar "§5Soul Count: 6"
execute if score @s soul_count matches 7 run title @s actionbar "§5Soul Count: 7"
execute if score @s soul_count matches 8 run title @s actionbar "§5Soul Count: 8"
execute if score @s soul_count matches 9 run title @s actionbar "§5Soul Count: 9"
execute if score @s soul_count matches 10 run title @s actionbar "§cSoul Count: 10"
execute as @e[tag=soulgathereffect] run function bro:scythe/soul_gather_remove