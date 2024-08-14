#mobs with certain tags should join certain teams

#skeletown mobs
execute as @e[tag=resident] run team join skeletown
execute as @e[tag=resident] run tag @s remove skeletown

#herobrine mobs
execute as @e[tag=satherobrine] run team join invader
execute as @e[tag=satherobrine] run tag @s remove satherobrine

#babel mobs
execute as @e[tag=babelcoven] run team join coven
execute as @e[tag=babelcoven] run tag @s remove babelcoven

#illeite mobs
execute as @e[tag=illite] run team join illeite
execute as @e[tag=illite] run tag @s remove illeite

#villantis mobs
execute as @e[tag=villantis] run team join villantis
execute as @e[tag=villantis] run tag @s remove villantis

#restarts function
schedule function bro:join_team 1s