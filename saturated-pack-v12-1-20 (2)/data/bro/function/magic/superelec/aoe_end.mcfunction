execute as @e[type=marker,tag=sat.superelec.aoe] run kill @s

execute as @e[tag=sat.superelec.aoe] run tag @s remove sat.superelec.aoe
execute as @e[tag=sat.elecaoe.immune] run tag @s remove sat.elecaoe.immune