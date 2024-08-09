# Display particles when effect, then summons a husk
execute as @e[tag=createundeadheal3] at @s run particle block{block_state:{Name:slime_block}} ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=createundeadheal3] at @s run particle block{block_state:{Name:slime_block}} ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=createundeadheal3] at @s run particle block{block_state:{Name:slime_block}} ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=createundeadheal3] at @s run particle block{block_state:{Name:slime_block}} ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=createundeadheal3] at @s run particle block{block_state:{Name:slime_block}} ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=createundeadheal3] at @s run particle block{block_state:{Name:slime_block}} ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=createundeadheal3] at @s run particle block{block_state:{Name:slime_block}} ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=createundeadheal3] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:block,block_state:{Name:slime_block}},Radius:1,RadiusPerTick:0.25,Duration:40,potion_contents:{custom_color:6192150,potion:poison,custom_effects:[{id:poison,duration:200,amplifier:1,show_particles:1b}]}}
execute as @e[tag=createundeadheal3] run function bro:enemy/witchdoctor_remove
