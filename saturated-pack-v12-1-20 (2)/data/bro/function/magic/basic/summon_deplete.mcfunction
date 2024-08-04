#summon is now just gone
execute as @e[tag=summonedbyplayer] at @s run damage @s 100 indirect_magic
execute as @e[tag=sattarget] at @s run tag @s remove sattarget
execute as @e[team=golemancy] at @s run team leave @s