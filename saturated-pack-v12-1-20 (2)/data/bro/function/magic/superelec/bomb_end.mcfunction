summon firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,components:{fireworks:{explosions:[{shape:large_ball,colors:[I;1481884],fade_colors:[I;5329272,3158103]},{shape:large_ball,colors:[I;3847130],fade_colors:[I;5329272,3158103]},{shape:large_ball,colors:[I;9156607],fade_colors:[I;5329272,3158103]},{shape:large_ball,colors:[I;10348287],fade_colors:[I;5329272,3158103]},{shape:large_ball,colors:[I;8452853],fade_colors:[I;5329272,3158103]},{shape:large_ball,colors:[I;15007231],fade_colors:[I;5329272,3158103]}]}}}}

execute as @e[type=bat,tag=sat.superelec.bomb] at @s run execute as @e[distance=2.5..5,tag=!sat.superelecbomb.immune] run damage @s 15 minecraft:lightning_bolt by @e[sort=nearest,limit=1]
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run execute as @e[distance=..2.5,tag=!sat.superelecbomb.immune] run damage @s 30 minecraft:lightning_bolt by @e[sort=nearest,limit=1]

execute as @e[type=bat,tag=sat.superelec.bomb] at @s run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..32] ~ ~ ~ 1 .5
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..32] ~ ~ ~ 1 .5
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 3 .7
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 3 2
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run playsound minecraft:entity.wither.hurt hostile @a[distance=..64] ~ ~ ~ 3 .5
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run playsound minecraft:entity.wither.hurt hostile @a[distance=..64] ~ ~ ~ 3 .5
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run particle campfire_cosy_smoke ~ ~ ~ .5 .5 .5 .01 5 normal @a[distance=..128]
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 .02 20 normal @a[distance=..128]
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run particle flame ~ ~ ~ 0 0 0 .25 100 force @a[distance=..128]
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run particle large_smoke ~ ~ ~ 0 0 0 .1 100 force @a[distance=..128]
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run particle flash ~ ~ ~ 0 0 0 .1 10 force @a[distance=..128]
scoreboard players set @s sat.kaboomtick.0 0

kill @s[type=bat]

execute as @e[tag=sat.superelecbomb.immune] run tag @s remove sat.superelecbomb.immune
execute as @e[tag=sat.superelec.bomb] run tag @s remove sat.superelec.bomb