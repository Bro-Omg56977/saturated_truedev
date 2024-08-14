#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add hysteria_chance dummy
execute store result score @s hysteria_chance run random value 1..20

# adds tag and plays sfx

execute if score @s hysteria_chance matches 1 if score @s soul_count matches 5..10 run tag @s[tag=!hysteriaeffect] add hysteriaeffect
execute if score @s hysteria_chance matches 1 if score @s soul_count matches 5..10 run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=hysteriaeffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound minecraft:entity.warden.angry ambient @s[tag=hysteriaeffect]
execute as @e[tag=hysteriaeffect] run schedule function bro:scythe/trident/hysteria_activate 5t