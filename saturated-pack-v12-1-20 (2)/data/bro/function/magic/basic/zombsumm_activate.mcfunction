# Display particles when effect, then summons a husk
execute as @e[tag=zombieressurect4] at @s run playsound minecraft:block.bell.resonate ambient @s[tag=zombieressurect4]
execute as @e[tag=zombieressurect4] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle minecraft:soul_fire_flame ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle minecraft:soul_fire_flame ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run particle minecraft:soul_fire_flame ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=zombieressurect4] at @s run summon husk ~ ~ ~ {Glowing:1b,PersistenceRequired:1b,Tags:["summonedbyplayer"],Team:golemancy}
execute as @e[tag=zombieressurect4] run schedule function bro:magic/basic/summon_distract 1 replace
execute as @e[tag=zombieressurect4] run function bro:magic/basic/zombsummon_remove