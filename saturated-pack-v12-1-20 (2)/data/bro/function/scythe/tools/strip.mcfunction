#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add sat.tool.chance dummy
execute store result score @s sat.tool.chance run random value 1..96

# adds tag and plays sfx

execute if score @s sat.tool.chance matches 1 if score @s soul_count matches 5..10 run tag @s[tag=!satstripmineeffect] add satstripmineeffect
execute if score @s sat.tool.chance matches 1 if score @s soul_count matches 5..10 run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=satstripmineeffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound entity.wither.break_block ambient @s[tag=satstripmineeffect] ~ ~ ~ 0.25
execute as @e[tag=satstripmineeffect] at @s run particle block{block_state:{Name:stone}} ~0.2 ~1 ~0.2 0 0 0 0.1 10
execute as @e[tag=satstripmineeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satstripmineeffect] at @s run particle block{block_state:{Name:deepslate}} ~-0.2 ~1 ~0.2 0 0 0 0.1 10
execute as @e[tag=satstripmineeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satstripmineeffect] at @s run particle block{block_state:{Name:stone}} ~ ~1 ~ 0 0 0 0.1 10
execute as @e[tag=satstripmineeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=satstripmineeffect] at @s run particle block{block_state:{Name:deepslate}} ~ ~0.6 ~ 0 0 0 0.1 10
execute as @e[tag=satstripmineeffect] at @s run fill ^25 ^1 ^1 ^-25 ^-1 ^-1 air destroy
execute as @e[tag=satstripmineeffect] at @s run tellraw @s "§5Five Souls has been consumed"
execute as @e[tag=satstripmineeffect] run scoreboard players remove @e soul_count 5
execute as @e[tag=satstripmineeffect] run function bro:scythe/tools/strip_remove