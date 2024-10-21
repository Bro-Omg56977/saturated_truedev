execute as @s run tag @s add satsinkholebossplayer
execute as @s run scoreboard objectives add sat.sinkholeboss.0 dummy
execute as @s run scoreboard players set @s sat.sinkholeboss.0 1
schedule function bro:enemy/sinkholemarkplayerforbossfight_buffer 2s replace