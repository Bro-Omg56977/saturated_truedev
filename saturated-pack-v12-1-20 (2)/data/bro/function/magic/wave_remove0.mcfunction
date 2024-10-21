# Removes main tag, then does part 2 of the command itself
execute as @e[tag=evilwave] at @s run particle glow_squid_ink ~0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=evilwave] at @s run particle glow_squid_ink ~0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=evilwave] at @s run particle glow_squid_ink ~-0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=evilwave] at @s run particle glow_squid_ink ~-0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=evilwave,type=#bro:evil] at @s run teleport @s ~ -128 ~
execute as @e[tag=evilwave,type=#bro:evil] at @s run damage @s 10000 magic
execute as @e[tag=evilwave,type=!#bro:evil] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=evilwavesound] at @s run effect give @s bad_omen infinite 5 true
execute as @e[tag=evilwave] run schedule function bro:magic/wave_remove1 5 replace