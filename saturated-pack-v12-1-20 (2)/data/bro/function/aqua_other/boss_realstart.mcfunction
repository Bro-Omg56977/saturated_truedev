#sets a lightning spawner for cool effects
setblock ~ ~ ~ spawner{SpawnCount:1,SpawnRange:6,Delay:400,MinSpawnDelay:200,MaxSpawnDelay:1000,RequiredPlayerRange:50,SpawnData:{entity:{id:lightning_bolt,Silent:1b}}} replace

#summons a marker
execute as @e[tag=sat.aquaboss.arena,type=marker] at @s run summon marker ~ ~-3 ~ {Tags:["sat.aquaboss.summonphase1.placeholder"]}
execute as @e[tag=sat.aquaboss.summonphase1.placeholder,type=marker] run function bro:aqua_other/boss_phase1_summontick