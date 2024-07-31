# Display particles when implosion, then implode
playsound minecraft:block.bell.resonate ambient @s[tag=delusioneffect]
execute as @e[tag=delusioneffect] at @s run particle block{block_state:{Name:black_concrete}} ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=delusioneffect] at @s run particle block{block_state:{Name:black_concrete}} ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=delusioneffect] at @s run particle minecraft:block{block_state:{Name:black_concrete}} ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=delusioneffect] at @s run particle minecraft:block{block_state:{Name:black_concrete}} ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=delusioneffect] at @s run particle minecraft:block{block_state:{Name:black_concrete}} ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=delusioneffect] at @s run particle minecraft:block{block_state:{Name:black_concrete}} ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=delusioneffect] at @s run particle minecraft:block{block_state:{Name:black_concrete}} ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=delusioneffect] run effect give @s minecraft:darkness 10 1
execute as @e[tag=delusioneffect] run execute in bro:void run teleport @s[tag=delusioneffect] ~ 64 ~
execute as @e[tag=delusioneffect] run effect give @s slowness 10 4
execute as @e[tag=delusioneffect] run function bro:magic/delusion_remove