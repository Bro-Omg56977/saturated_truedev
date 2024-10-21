#if otherwise then finishes the function with the start
execute as @e[tag=satsinkholebossplayer] at @s run execute if score @s sat.sinkholeboss.0 matches 0 run function bro:enemy/sinkholemarkplayerforbossfight_start

#if the score is 1 then repeat function in 2 seconds
execute as @e[tag=satsinkholebossplayer] at @s run execute if score @s sat.sinkholeboss.0 matches 1 run schedule function bro:enemy/sinkholemarkplayerforbossfight_buffer 20 replace
