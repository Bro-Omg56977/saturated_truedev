#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add adversity_chance dummy
execute store result score @s adversity_chance run random value 1..10

# adds tag and plays sfx

execute if score @s adversity_chance matches 1 if score @s soul_count matches 2..10 run tag @s[tag=!adversityeffect] add adversityeffect
execute if score @s adversity_chance matches 1 if score @s soul_count matches 2..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=adversityeffect]
execute if score @s adversity_chance matches 1 if score @s soul_count matches 2..10 run scoreboard objectives add adversity_randomizer dummy
execute if score @s adversity_chance matches 1 if score @s soul_count matches 2..10 run execute store result score @s adversity_randomizer run random value 1..6

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound minecraft:entity.illusioner.prepare_blindness ambient @s[tag=adversityeffect]
execute as @e[tag=adversityeffect] run schedule function bro:scythe/projectile/adversity_activate 5t replace