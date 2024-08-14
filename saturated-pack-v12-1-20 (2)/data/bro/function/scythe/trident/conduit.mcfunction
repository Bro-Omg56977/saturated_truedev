#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add conduit_chance dummy
execute store result score @s conduit_chance run random value 1..10

# adds tag and plays sfx

execute if score @s conduit_chance matches 1 if score @s soul_count matches 2..10 run tag @s[tag=!conduiteffect] add conduiteffect
execute if score @s conduit_chance matches 1 if score @s soul_count matches 2..10 run tag @s[tag=!conduitbuff] add conduitbuff
execute if score @s conduit_chance matches 1 if score @s soul_count matches 2..10 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=conduiteffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound minecraft:block.conduit.activate ambient @s[tag=conduiteffect]
execute as @e[tag=conduiteffect] run schedule function bro:scythe/trident/conduit_activate 5t