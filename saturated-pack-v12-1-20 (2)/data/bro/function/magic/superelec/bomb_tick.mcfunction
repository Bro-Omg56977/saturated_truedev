execute as @e[type=bat,tag=sat.superelec.bomb] at @s run execute if score @s sat.kaboomtick.0 matches 1 run particle end_rod ~ ~ ~ 0 0 0 0.1 5
execute as @e[type=bat,tag=sat.superelec.bomb] at @s run execute if score @s sat.kaboomtick.0 matches 1 run particle glow ~ ~ ~ 0 0 0 0.1 10


execute as @e[type=bat,tag=sat.superelec.bomb] run execute if score @s sat.kaboomtick.0 matches 1 run execute at @s unless block ~ ~-.05 ~ air run function bro:magic/superelec/bomb_end
execute as @e[type=bat,tag=sat.superelec.bomb] run execute if score @s sat.kaboomtick.0 matches 1 run execute at @s unless block ~ ~-.05 ~ air run kill @s
execute as @e[type=bat,tag=sat.superelec.bomb] run execute if score @s sat.kaboomtick.0 matches 1 run execute at @s if entity @e[distance=..1,type=!bat,tag=!sat.superelec.bomb,tag=!sat.superelecbomb.immune] run function bro:magic/superelec/bomb_end
execute as @e[type=bat,tag=sat.superelec.bomb] run execute if score @s sat.kaboomtick.0 matches 1 run execute at @s if entity @e[distance=..1,type=!bat,tag=!sat.superelec.bomb,tag=!sat.superelecbomb.immune] run kill @s


execute as @e[type=bat,tag=sat.superelec.bomb] run execute if score @s sat.kaboomtick.0 matches 1 run schedule function bro:magic/superelec/bomb_tick 1 replace


