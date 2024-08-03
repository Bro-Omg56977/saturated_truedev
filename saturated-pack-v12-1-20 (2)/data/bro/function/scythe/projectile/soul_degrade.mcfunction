#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add degrade_chance dummy
execute store result score @s degrade_chance run random value 1..5

# adds tag and plays sfx

execute if score @s degrade_chance matches 1 if score @s soul_count matches 1..10 run tag @s[tag=!degradeeffect] add degradeeffect
execute if score @s degrade_chance matches 1 if score @s soul_count matches 1..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=degradeeffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound minecraft:ambient.soul_sand_valley.mood ambient @s[tag=degradeeffect]
execute as @e[tag=degradeeffect] run schedule function bro:scythe/projectile/soul_degrade_activate 5t