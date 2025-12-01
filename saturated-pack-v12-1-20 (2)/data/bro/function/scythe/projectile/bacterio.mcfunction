#makes it so that entity hit has around a 20% chance of the effect actually happening

# adds tag and plays sfx

execute if score @s soul_count matches 10 run tag @s[tag=!bacterioeffect] add bacterioeffect
execute if score @s soul_count matches 10 run tag @s[tag=!bacteriosource] add bacteriosource
execute if score @s soul_count matches 10 run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=bacterioeffect]

# Display particles when effect, adds effects, then removes a soul from count. proceeds to run remove tags function

playsound entity.warden.sonic_charge ambient @s[tag=bacterioeffect] ~ ~ ~ 1 0.25
execute as @e[tag=bacterioeffect] at @s run particle minecraft:trial_omen ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=bacterioeffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=bacterioeffect] at @s run particle minecraft:raid_omen ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=bacterioeffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=bacterioeffect] at @s run particle minecraft:trial_omen ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=bacterioeffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=bacterioeffect] at @s run particle minecraft:raid_omen ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=bacterioeffect] at @s run title @s actionbar "§cAll Souls has been consumed"
execute as @e[tag=bacterioeffect] run scoreboard players remove @s soul_count 10
execute as @e[tag=bacterioeffect] run schedule function bro:scythe/projectile/bacterio_buffer1 1s replace
execute as @e[tag=bacterioeffect] run function bro:scythe/projectile/bacterio_remove1