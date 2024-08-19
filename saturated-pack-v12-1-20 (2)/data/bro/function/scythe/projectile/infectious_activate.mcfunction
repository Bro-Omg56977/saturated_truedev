#gives particles and then drops an aoe cloud and then spreads tag and applies debuff

execute as @e[tag=infecteffect] at @s run particle minecraft:spore_blossom_air ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=infecteffect] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=infecteffect] at @s run particle minecraft:spore_blossom_air ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=infecteffect] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=infecteffect] at @s run particle minecraft:spore_blossom_air ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=infecteffect] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=infecteffect] at @s run particle minecraft:spore_blossom_air ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=infectarrow] at @s run particle minecraft:gust_emitter_small ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=infectarrow,tag=!infecteffect,type=!#minecraft:undead] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:block,block_state:{Name:slime_block}},Radius:1,RadiusPerTick:0.05,Duration:400,potion_contents:{custom_color:6192150,potion:poison,custom_effects:[{id:poison,duration:200,amplifier:4,show_particles:1b}]}}
execute as @e[tag=infectarrow,tag=!infecteffect,type=#minecraft:undead] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:block,block_state:{Name:black_concrete_powder}},Radius:1,RadiusPerTick:0.05,Duration:400,potion_contents:{custom_color:1908001,custom_effects:[{id:wither,duration:200,amplifier:4,show_particles:1b}]}}
execute as @e[tag=infectarrow,tag=!infecteffect] at @s run tag @e[tag=!infectarrow,tag=!infecteffect,distance=..20] add infectarrow
execute as @e[tag=infectarrow,tag=!infecteffect] unless entity @e[type=#undead] run effect give @s minecraft:poison 20 4
execute as @e[tag=infectarrow,tag=!infecteffect] unless entity @e[type=#undead] run effect give @s minecraft:wither 20 4
execute as @e[tag=infectarrow,tag=!infecteffect] run effect give @s minecraft:slowness 20 5
execute as @e[tag=infectarrow,tag=!infecteffect] run effect give @s minecraft:weakness 20 5
execute as @e[tag=infecteffect] at @s run tellraw @s "§5Five Souls has been consumed"
execute as @e[tag=infecteffect] run scoreboard players remove @e soul_count 5
execute as @e[tag=infecteffect] run function bro:scythe/projectile/infectious_remove