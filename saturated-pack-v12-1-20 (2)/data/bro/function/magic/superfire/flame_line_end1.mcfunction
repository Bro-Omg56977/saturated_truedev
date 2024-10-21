#instead of destroying blocks or leaving fire it leaves a particle cloud. also some sfx are changed
particle flame ~ ~ ~ 0 0 0 .15 12 force @a[distance=..32]
playsound block.fire.extinguish block @a[distance=..32] ~ ~ ~ 1 2
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]

execute positioned ~ ~ ~ run summon area_effect_cloud ~ ~ ~ {Particle:{type:falling_lava},Radius:5,Duration:200,potion_contents:{custom_effects:[{id:wither,duration:100,amplifier:0,ambient:1b,show_particles:1b,show_icon:1b}]}}

execute as @e[distance=..5] at @s run damage @s 4 magic
