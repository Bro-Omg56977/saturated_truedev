#summons a marker which gets a random teleport
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run summon marker ~ ~1 ~ {Tags:["sat.superelec.auradecor"],Rotation:[0f,-180f]}
execute as @e[type=marker,tag=sat.superelec.auradecor,tag=!sat.superelec.auradecor.modified] at @s run data modify entity @e[tag=sat.superelec.auradecor,sort=nearest,limit=1,type=marker] data.Owner set from entity @s UUID
execute as @e[type=marker,tag=sat.superelec.auradecor,tag=!sat.superelec.auradecor.modified] at @s run spreadplayers ~ ~ 0 20 false @e[type=marker,tag=sat.superelec.auradecor,tag=!sat.superelec.auradecor.modified]

#summons a small and short lasting particle cloud
execute as @e[type=marker,tag=sat.superelec.auradecor,tag=!sat.superelec.auradecor.modified] at @s run summon area_effect_cloud ~ ~.25 ~ {Particle:{type:electric_spark},Radius:1,RadiusPerTick:0.02,Duration:100,potion_contents:{custom_effects:[{id:wither,duration:100,amplifier:1,show_particles:1b,show_icon:1b}]}}
execute as @e[type=marker,tag=sat.superelec.auradecor,tag=!sat.superelec.auradecor.modified] at @s run tag @s add sat.superelec.auradecor.modified

#teleports the markers into the air a bit
execute as @e[type=marker,tag=sat.superelec.auradecor] at @s run scoreboard players add @s sat.other 1
execute as @e[type=marker,tag=sat.superelec.auradecor] at @s run particle end_rod ~ ~ ~ 0 0 0 0.01 7 force @a[distance=..34]
execute as @e[type=marker,tag=sat.superelec.auradecor] at @s run particle glow ~ ~ ~ 0 0 0 0.01 8 force @a[distance=..34]
execute as @e[type=marker,tag=sat.superelec.auradecor] at @s run execute unless score @s sat.other matches 24.. run tp @s ~ ~.5 ~
execute as @e[type=marker,tag=sat.superelec.auradecor] at @s run execute if score @s sat.other matches 24.. run kill @s
execute as @e[type=marker,tag=sat.superelec.auradecor] at @s run execute if score @s sat.other matches 24.. run scoreboard players reset @s sat.other

#restarts the function
execute as @e[tag=sat.elecaura.user] at @s run execute if score @s sat.elecaura.0 matches 1 run schedule function bro:magic/superelec/aura_buffer2 0.5s replace