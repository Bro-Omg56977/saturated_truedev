# Display particles when effect, then gives the victim the effects
execute as @e[tag=evilwavesound] at @s run playsound entity.ender_dragon.death ambient 1 ~ ~ ~ 0.5
execute positioned ~ ~ ~ as @e[tag=evilwavesound] at @s run playsound entity.ender_dragon.death block @s ~ ~ ~ 0.25
execute as @e[tag=evilwave] at @s run particle glow_squid_ink ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=evilwave] at @s run particle glow_squid_ink ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=evilwave] at @s run particle glow_squid_ink ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=evilwave] at @s run particle glow_squid_ink ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=evilwave] at @s run effect give @s minecraft:levitation 15 1 true
execute as @e[tag=evilwave] at @s run effect give @s minecraft:weakness 15 10 true
execute as @e[tag=evilwave] at @s run effect give @s minecraft:slowness 15 10 true
execute as @e[tag=evilwave] run schedule function bro:magic/wave_remove0 9s replace
