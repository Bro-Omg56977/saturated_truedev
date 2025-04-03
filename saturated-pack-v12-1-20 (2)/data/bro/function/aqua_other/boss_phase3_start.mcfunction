execute as @e[tag=sat.aquaboss.arena,type=marker] at @s run summon marker ~ ~-3 ~ {Tags:["sat.aquaboss.summonphase3.placeholder"]}
execute as @e[tag=sat.aquaboss.summonphase3.placeholder,type=marker] run function bro:aqua_other/boss_phase3_summontick
advancement revoke @s only bro:boss/aqua/detectphase2death