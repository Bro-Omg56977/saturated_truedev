execute as @e[tag=sat.aquaboss.arena,type=marker] at @s run summon marker ~ ~-3 ~ {Tags:["sat.aquaboss.summonphase2.placeholder"]}
execute as @e[tag=sat.aquaboss.summonphase2.placeholder,type=marker] run function bro:aqua_other/boss_phase2_summontick
advancement revoke @s only bro:boss/aqua/detectphase1death