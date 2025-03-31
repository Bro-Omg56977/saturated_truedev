#adds a score that increases
execute as @e[type=marker,tag=sat.superelec.aoe] at @s run scoreboard players add @s sat.other 1

#particle effects and a sound effect
execute as @e[type=marker,tag=sat.superelec.aoe] at @s run playsound minecraft:entity.warden.heartbeat ambient @a[distance=..32] ~ ~ ~ 1 2
execute as @e[type=marker,tag=sat.superelec.aoe] at @s run particle minecraft:glow ~0.2 ~1 ~-0.2 0 0 0 0.1 10
execute as @e[type=marker,tag=sat.superelec.aoe] at @s run particle minecraft:end_rod ~-0.2 ~1 ~-0.2 0 0 0 0.1 10
execute as @e[type=marker,tag=sat.superelec.aoe] at @s run particle minecraft:glow ~ ~1.4 ~ 0 0 0 0.1 10

execute as @e[type=marker,tag=sat.superelec.aoe] at @s unless score @s sat.other matches 18.. run schedule function bro:magic/superelec/aoe_tick 0.5s replace
execute as @e[type=marker,tag=sat.superelec.aoe] at @s if score @s sat.other matches 18.. run function bro:magic/superelec/aoe1
execute as @e[type=marker,tag=sat.superelec.aoe] at @s if score @s sat.other matches 18.. run scoreboard players reset @s sat.other