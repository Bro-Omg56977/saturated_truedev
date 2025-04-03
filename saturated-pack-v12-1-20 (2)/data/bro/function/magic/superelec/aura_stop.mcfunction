#sets a scoreboard to zero, which should stop the buffer function
execute as @e[tag=sat.elecaura.user] at @s run scoreboard players set @s sat.timeaccel.0 0

#and kill the markers
execute as @e[type=marker,tag=sat.superelec.auradecor] run kill @s

#if that doesn't work, then just gets rid of the tag
execute as @e[tag=sat.elecaura.user] at @s run tag @s remove sat.elecaura.user
execute as @e[tag=sat.superelec.auradecor] run tag @s remove sat.superelec.auradecor
execute as @e[tag=sat.superelec.auradecor.modified] run tag @s remove sat.superelec.auradecor.modified