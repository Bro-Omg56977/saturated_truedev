execute as @e[type=marker,tag=sat.descend.nuke] at @s run execute if score @s sat.kaboomtick.0 matches 1 run particle soul_fire_flame ~ ~ ~ 0 0 0 0 5
execute as @e[type=marker,tag=sat.descend.nuke] at @s run execute if score @s sat.kaboomtick.0 matches 1 run particle sculk_soul ~ ~ ~ 0 0 0 0 5
execute as @e[type=marker,tag=sat.descend.nuke] at @s run execute if score @s sat.kaboomtick.0 matches 1 run particle sonic_boom ~ ~ ~ 0 0 0 0 10

execute as @e[type=marker,tag=sat.descend.nuke] run execute if score @s sat.kaboomtick.0 matches 1 run execute at @s unless block ~ ~-.25 ~ air as @e[distance=..3] run damage @s 10 magic by @e[sort=nearest,limit=1]
execute as @e[type=marker,tag=sat.descend.nuke] run execute if score @s sat.kaboomtick.0 matches 1 run execute at @s unless block ~ ~-.25 ~ air run particle large_smoke ~ ~ ~ 0 0 0 .2 50 force @a[distance=..32]
execute as @e[type=marker,tag=sat.descend.nuke] run execute if score @s sat.kaboomtick.0 matches 1 run execute at @s unless block ~ ~-.25 ~ air run particle soul_fire_flame ~ ~ ~ 0 0 0 .15 25 force @a[distance=..32]
execute as @e[type=marker,tag=sat.descend.nuke] run execute if score @s sat.kaboomtick.0 matches 1 run execute at @s unless block ~ ~-.25 ~ air run playsound entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 4 1
execute as @e[type=marker,tag=sat.descend.nuke] run execute if score @s sat.kaboomtick.0 matches 1 run execute at @s unless block ~ ~-.25 ~ air run function bro:magic/superfire/flame_kaboom_end
execute as @e[type=marker,tag=sat.descend.nuke] run execute if score @s sat.kaboomtick.0 matches 1 run execute at @s unless block ~ ~-.25 ~ air run kill @s


execute as @e[type=marker,tag=sat.descend.nuke] run execute if score @s sat.kaboomtick.0 matches 1 run execute at @s run tp @s ~ ~-.5 ~

execute as @e[type=marker,tag=sat.descend.nuke] run execute if score @s sat.kaboomtick.0 matches 1 run schedule function bro:magic/superfire/flame_kaboom_tick 1 replace


