#spreads the tag one more time before literally evicerating them. then runs remove tag

execute as @e[tag=bacterioarrow,tag=!bacteriosource] at @s run tag @e[tag=!bacterioarrow,tag=!bacteriosource,distance=..5] add bacterioarrow
execute as @e[tag=bacterioarrow,tag=!bacteriosource,tag=bacterioentity] at @s run tag @e[tag=!bacterioarrow,tag=!bacteriosource,tag=!bacterioentity,distance=..5] add bacterioentity
execute as @e[tag=bacterioarrow,tag=!bacteriosource] at @s run effect give @s minecraft:weakness 5 5
execute as @e[tag=bacterioarrow,tag=!bacteriosource] at @s run particle explosion_emitter ~ ~1.4 ~ 0 0 0 0.01 1
execute as @e[tag=bacterioarrow,tag=!infecteffect,type=!#minecraft:undead] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:block,block_state:{Name:slime_block}},Radius:2.5,RadiusPerTick:0.001,Duration:400,potion_contents:{custom_color:6192150,potion:poison,custom_effects:[{id:poison,duration:200,amplifier:4,show_particles:1b}]}}
execute as @e[tag=bacterioarrow,tag=!infecteffect,type=#minecraft:undead] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:block,block_state:{Name:black_concrete_powder}},Radius:2.5,RadiusPerTick:0.001,Duration:400,potion_contents:{custom_color:1908001,custom_effects:[{id:wither,duration:200,amplifier:4,show_particles:1b}]}}
execute as @e[tag=bacterioarrow,tag=!bacteriosource] run effect give @s[type=!#undead] minecraft:instant_damage 10 10
execute as @e[tag=bacterioarrow,tag=!bacteriosource] run effect give @s[type=#undead] minecraft:instant_health 10 10
execute as @e[tag=bacteriosource] run schedule function bro:scythe/projectile/adversity_remove 1 replace