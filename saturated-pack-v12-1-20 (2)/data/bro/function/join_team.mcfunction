#mobs with certain tags should join certain teams

#skeletown mobs
execute as @e[tag=resident,type=!player] run team join skeletown
execute as @e[tag=resident,type=!player] run tag @s remove skeletown

#herobrine mobs
execute as @e[tag=satherobrine,type=!player] run team join invader
execute as @e[tag=satherobrine,type=!player] run tag @s remove satherobrine

#babel mobs
execute as @e[tag=babelcoven,type=!player] run team join coven
execute as @e[tag=babelcoven,type=!player] run tag @s remove babelcoven

#illeite mobs
execute as @e[tag=illite,type=!player] run team join illeite
execute as @e[tag=illite,type=!player] run tag @s remove illeite

#villantis mobs
execute as @e[tag=villantis,type=!player] run team join villantis
execute as @e[tag=villantis,type=!player] run tag @s remove villantis

#sinkhole ruins mobs
execute as @e[tag=sinkhole,type=!player] run team join sinkhole
execute as @e[tag=sinkhole,type=!player] run tag @s remove sinkhole

#summoned mobs
execute as @e[tag=summonedbyplayer,type=!player] run team join golemancy

#restarts function
schedule function bro:join_team 4s replace