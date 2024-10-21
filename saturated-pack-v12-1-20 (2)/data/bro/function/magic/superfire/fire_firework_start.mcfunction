#start. thanks limesplatus
summon marker ~ ~1.8 ~ {Tags:["sat.fireworkflame"]}
data modify entity @e[sort=nearest,limit=1,type=marker,tag=sat.fireworkflame] data.Owner set from entity @s UUID

#allows for tick
execute as @e[tag=sat.fireworkflame,limit=1,sort=nearest] at @s run scoreboard objectives add sat.fireworktick.0 dummy
execute as @e[tag=sat.fireworkflame,limit=1,sort=nearest] run scoreboard players set @s sat.fireworktick.0 1

execute as @e[tag=sat.fireworkflame,limit=1,sort=nearest] run function bro:magic/superfire/fire_firework_tick