#particles ig
execute as @e[type=marker,tag=sat.aquaboss.summonphase1.placeholder] at @s run particle end_rod ~ ~ ~ 0 0 0 .2 10 force @a[distance=..32]
execute as @e[type=marker,tag=sat.aquaboss.summonphase1.placeholder] at @s run particle glow ~ ~ ~ 0 0 0 .2 10 force @a[distance=..32]

#if successfully detects a block
execute as @e[type=marker,tag=sat.aquaboss.summonphase1.placeholder] at @s run execute at @s unless block ~ ~-.25 ~ air run particle end_rod ~ ~ ~ .2 6 .2 .2 100 force @a[distance=..80]
execute as @e[type=marker,tag=sat.aquaboss.summonphase1.placeholder] at @s run execute at @s unless block ~ ~-.25 ~ air run particle glow ~ ~ ~ .2 6 .2 .2 200 force @a[distance=..80]
execute as @e[type=marker,tag=sat.aquaboss.summonphase1.placeholder] at @s run execute at @s unless block ~ ~-.25 ~ air run particle campfire_cosy_smoke ~ ~ ~ .2 6 .2 .15 200 force @a[distance=..80]
execute as @e[type=marker,tag=sat.aquaboss.summonphase1.placeholder] at @s run execute at @s unless block ~ ~-.25 ~ air run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 4 1
execute as @e[type=marker,tag=sat.aquaboss.summonphase1.placeholder] at @s run execute at @s unless block ~ ~-.25 ~ air run function bro:aqua_other/boss_phase1_summon
execute as @e[type=marker,tag=sat.aquaboss.summonphase1.placeholder] at @s run execute at @s unless block ~ ~-.25 ~ air run kill @s


execute as @e[type=marker,tag=sat.aquaboss.summonphase1.placeholder] run execute at @s run tp @s ~ ~-.15 ~
execute as @e[type=marker,tag=sat.aquaboss.summonphase1.placeholder] run execute at @s run playsound entity.glow_squid.ambient hostile @a[distance=..80] ~ ~ ~ 8 0.5

execute as @e[type=marker,tag=sat.aquaboss.summonphase1.placeholder] at @s run schedule function bro:aqua_other/boss_phase1_summontick 0.25s replace