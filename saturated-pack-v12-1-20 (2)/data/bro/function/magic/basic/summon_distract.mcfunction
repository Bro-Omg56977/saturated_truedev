execute as @e[tag=summonedbyplayer] at @s run damage @s 1 generic by @e[limit=1,tag=sattarget,sort=nearest]
#bruh
execute as @e[tag=summonedbyplayer] at @s run schedule function bro:magic/basic/summon_deplete 20s replace
