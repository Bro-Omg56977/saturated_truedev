#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add fear_chance dummy
execute store result score @s fear_chance run random value 1..5

# adds tag and plays sfx

execute if score @s fear_chance matches 1 if score @s soul_count matches 1..10 run tag @s[tag=!feareffect] add feareffect
execute if score @s fear_chance matches 1 if score @s soul_count matches 1..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=feareffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound minecraft:ambient.soul_sand_valley.mood ambient @s[tag=feareffect]
execute as @e[tag=feareffect] run schedule function bro:scythe/trident/fear_activate 5t replace