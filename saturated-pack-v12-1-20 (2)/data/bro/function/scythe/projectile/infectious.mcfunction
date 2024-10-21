#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add infectious_chance dummy
execute store result score @s infectious_chance run random value 1..20

# adds tag and plays sfx

execute if score @s infectious_chance matches 1 if score @s soul_count matches 5..10 run tag @s[tag=!infecteffect] add infecteffect
execute if score @s infectious_chance matches 1 if score @s soul_count matches 5..10 run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=infecteffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound minecraft:entity.husk.converted_to_zombie ambient @s[tag=infecteffect]
execute as @e[tag=infecteffect] run schedule function bro:scythe/projectile/infectious_activate 5t replace