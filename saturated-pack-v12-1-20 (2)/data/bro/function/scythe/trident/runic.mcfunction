# adds tag and plays sfx

execute if score @s soul_count matches 10 run tag @s[tag=!runiceffect] add runiceffect
execute if score @s soul_count matches 10 run tag @s[tag=!runicimmune] add runicimmune
execute if score @s soul_count matches 10 run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=runiceffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound minecraft:entity.warden.sonic_charge ambient @s[tag=runiceffect] ~ ~ ~ 1 0.75
execute as @e[tag=runiceffect] run schedule function bro:scythe/trident/runic_activate 5t replace