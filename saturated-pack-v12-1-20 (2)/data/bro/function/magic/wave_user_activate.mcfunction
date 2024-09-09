# Display particles when effect, then summons a husk
execute as @e[tag=evilwaveeffect] at @s run particle soul_fire_flame ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=evilwaveeffect] at @s run particle soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=evilwaveeffect] at @s run particle soul_fire_flame ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=evilwaveeffect] at @s run particle soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=evilwaveeffect] at @s run effect give @s glowing 12 1 true
execute as @e[tag=evilwaveeffect] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:glow_squid_ink},Radius:0,RadiusPerTick:0.5,Duration:40,potion_contents:{potion:regeneration}}
execute as @e[tag=evilwaveeffect] at @s run schedule function bro:magic/wave_activate 2s replace
execute as @e[tag=evilwaveeffect] run function bro:magic/wave_user_remove
