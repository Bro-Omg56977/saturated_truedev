# Display particles when effect, then summons a husk
execute as @e[tag=zombieressurect4] at @s run playsound minecraft:block.bell.resonate ambient @s[tag=zombieressurect4]
execute as @e[tag=zombieressurect4] at @s run particle block{block_state:{Name:sand}} ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle block{block_state:{Name:sand}} ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle block{block_state:{Name:sand}} ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle block{block_state:{Name:sand}} ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle block{block_state:{Name:sand}} ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle block{block_state:{Name:sand}} ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle block{block_state:{Name:sand}} ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run summon husk ~ ~ ~ {Glowing:1b,PersistenceRequired:1b,Tags:["summonedbyplayer"],Team:golemancy,HandItems:[{id:iron_shovel,count:1},{id:air,count:1}],ArmorItems:[{},{},{},{id:golden_helmet,count:1}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}
execute as @e[tag=zombieressurect4] run schedule function bro:magic/basic/summon_distract 5 replace
execute as @e[tag=zombieressurect4] run function bro:magic/basic/zombsummon_remove
