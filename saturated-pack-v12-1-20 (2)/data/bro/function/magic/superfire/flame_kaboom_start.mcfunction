summon marker ~ ~ ~ {Tags:["sat.descend.nuke"]}
data modify entity @e[sort=nearest,limit=1,type=marker] data.Owner set from entity @s UUID



playsound entity.blaze.shoot hostile @a[distance=..64] ~ ~ ~ 4 .8
playsound block.respawn_anchor.deplete hostile @a[distance=..64] ~ ~ ~ 4 1.5
#spread

data modify entity @e[sort=nearest,limit=1,type=marker] Pos[1] set from entity @s Pos[1]

execute as @e[type=marker,limit=1,sort=nearest] at @s run tp @s ~ ~20 ~
execute as @e[type=marker,limit=1,sort=nearest] at @s run particle large_smoke ~ ~ ~ .2 .2 .2 .05 20 force @a[distance=..64]

execute as @e[tag=sat.descend.nuke,limit=1,sort=nearest] at @s run scoreboard objectives add sat.kaboomtick.0 dummy
execute as @e[tag=sat.descend.nuke,limit=1,sort=nearest] run scoreboard players set @s sat.kaboomtick.0 1

execute as @e[tag=sat.descend.nuke,limit=1,sort=nearest] run function bro:magic/superfire/flame_kaboom_tick