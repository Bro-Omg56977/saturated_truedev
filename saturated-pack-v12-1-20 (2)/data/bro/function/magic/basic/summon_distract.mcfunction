# summon the snowball
execute at @e[tag=summonedbyplayer] run summon minecraft:snowball ~ ~2.3 ~ {Tags:["atk_target"]}
# make the snowball owner hostile mobs
execute as @e[type=minecraft:snowball,tag=atk_target] run data modify entity @s Owner set from entity @e[type=#bro:hostile,limit=1,tag=sattarget] UUID
#bruh
execute as @e[tag=summonedbyplayer] at @s run schedule function bro:magic/basic/summon_deplete 20s
