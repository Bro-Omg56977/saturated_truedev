# Display particles when effect
execute as @e[tag=sattimeacceleffect] at @s run playsound block.respawn_anchor.deplete ambient 1 ~ ~ ~ 1
execute as @e[tag=sattimeacceleffect] at @s run playsound minecraft:entity.warden.sonic_charge ambient 1 ~ ~ ~ 1 0.75
execute as @e[tag=sattimeacceleffect] at @s run particle minecraft:explosion_emitter ~ ~1.4 ~ 0 0 0 0.01 1
execute as @e[tag=sattimeacceleffect] at @s run particle minecraft:gust_emitter_large ~ ~1.4 ~ 0 0 0 0.01 1

#effects all nearby entities ig
execute as @e[tag=sattimeacceleffect] at @s run tag @e[tag=!sattimeacceleffect,distance=..20] add sattimeaccelenemyeffect
execute as @e[tag=sattimeacceleffect] at @s run tellraw @e[type=player,distance=20] "§2Two Steps Ahead..."
execute as @e[tag=sattimeacceleffect] at @s run effect give @e[distance=..20,tag=!sattimeacceleffect] slowness 3 9
execute as @e[tag=sattimeacceleffect] at @s run effect give @e[distance=..20,tag=sattimeacceleffect] resistance 3 9
execute as @e[tag=sattimeacceleffect] run schedule function bro:magic/timeaccel_activate0 2s replace