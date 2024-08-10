# Display particles when effect, then summons a husk
execute as @e[tag=herobrinewitch3] at @s run particle witch ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=herobrinewitch3] at @s run particle witch ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=herobrinewitch3] at @s run particle witch ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=herobrinewitch3] at @s run particle witch ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=herobrinewitch3] at @s run particle witch ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=herobrinewitch3] at @s run particle witch ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=herobrinewitch3] at @s run particle witch ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=herobrinewitch3] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:block,block_state:{Name:slime_block}},Radius:1,RadiusPerTick:0.25,Duration:60,potion_contents:{custom_color:6192150,potion:poison,custom_effects:[{id:poison,duration:200,amplifier:1,show_particles:1b}]}}
execute as @e[tag=herobrinethrallp2] at @s run scoreboard objectives add potential_debuff dummy
execute as @e[tag=herobrinethrallp2] at @s run execute store result score @s potential_debuff run random value 1..6
execute as @e[tag=herobrinethrallp2] at @s if score @s potential_debuff matches 1 run summon area_effect_cloud ~ ~ ~ {Particle:{type:block,block_state:{Name:slime_block}},Radius:1,RadiusPerTick:0.0815,Duration:60,potion_contents:{custom_color:6192150,potion:poison,custom_effects:[{id:poison,duration:200,amplifier:1,show_particles:1b}]}}
execute as @e[tag=herobrinethrallp2] at @s if score @s potential_debuff matches 2 run summon area_effect_cloud ~ ~ ~ {Particle:{type:block,block_state:{Name:light_gray_concrete_powder}},Radius:1,RadiusPerTick:0.0815,Duration:60,potion_contents:{custom_color:4145469,potion:weakness,custom_effects:[{id:weakness,duration:200,amplifier:2,show_particles:1b}]}}
execute as @e[tag=herobrinethrallp2] at @s if score @s potential_debuff matches 3 run summon area_effect_cloud ~ ~ ~ {Particle:{type:block,block_state:{Name:iron_block}},Radius:1,RadiusPerTick:0.0815,Duration:60,potion_contents:{custom_color:4145469,potion:slowness,custom_effects:[{id:slowness,duration:200,amplifier:2,show_particles:1b}]}}
execute as @e[tag=herobrinethrallp2] at @s if score @s potential_debuff matches 4 run summon area_effect_cloud ~ ~ ~ {Particle:{type:falling_dust,block_state:{Name:black_concrete_powder}},Radius:1,RadiusPerTick:0.0815,Duration:60,potion_contents:{custom_color:4145469,potion:poison,custom_effects:[{id:blindness,duration:200,amplifier:2,show_particles:1b}]}}
execute as @e[tag=herobrinethrallp2] at @s if score @s potential_debuff matches 5 run summon area_effect_cloud ~ ~ ~ {Particle:{type:falling_dust,block_state:{Name:honeycomb_block}},Radius:1,RadiusPerTick:0.0815,Duration:60,potion_contents:{custom_color:4145469,potion:poison,custom_effects:[{id:mining_fatigue,duration:200,amplifier:4,show_particles:1b}]}}
execute as @e[tag=herobrinethrallp2] at @s if score @s potential_debuff matches 6 run summon area_effect_cloud ~ ~ ~ {Particle:{type:block,block_state:{Name:ochre_froglight}},Radius:1,RadiusPerTick:0.0815,Duration:60,potion_contents:{custom_color:4145469,potion:poison,custom_effects:[{id:glowing,duration:200,amplifier:2,show_particles:1b}]}}
execute as @e[tag=herobrinewitch3] run function bro:enemy/boss/0herobrine_witch_remove
