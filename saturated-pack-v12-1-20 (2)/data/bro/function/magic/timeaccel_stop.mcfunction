#sets a scoreboard to zero, which should stop the buffer function
execute as @e[tag=sattimeacceleffect] at @s run scoreboard players set @s sat.timeaccel.0 0

#if that doesn't work, then just gets rid of the tag
execute as @e[tag=sattimeacceleffect] at @s run tag @s remove sattimeacceleffect
execute as @e[tag=sattimeaccelenemyeffect] run tag @s remove sattimeaccelenemyeffect
execute as @e[tag=sattimeaccelenemyeffectbuffer] run tag @s remove sattimeaccelenemyeffectbuffer