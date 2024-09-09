#sets players scoreboard to 1
execute as @e[tag=satsinkholebossplayer] at @s run scoreboard players set @s sat.sinkholeboss.0 0

#unless there's a minion thing nearby, then its set back to one
execute as @e[tag=satsinkholebossminion] at @s run scoreboard players set @e[distance=..50] sat.sinkholeboss.0 1

#if the score is 1 then repeat function in 2 seconds
execute as @e[tag=satsinkholebossplayer] at @s run schedule function bro:enemy/sinkholemarkplayerforbossfight_buffer0 10s replace