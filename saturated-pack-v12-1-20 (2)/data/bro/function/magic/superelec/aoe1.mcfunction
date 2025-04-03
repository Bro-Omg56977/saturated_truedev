#particles, sound effectsm and a small-ish amount of damage
execute at @s as @e[distance=..3,tag=!sat.elecaoe.immune,tag=!sat.superelec.aoe] run damage @s 20 lightning_bolt by @a[limit=1,sort=nearest]
execute at @s run particle large_smoke ~ ~ ~ 0 0 0 .2 50 force @a[distance=..32]
execute at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 .15 25 force @a[distance=..32]
execute at @s run playsound entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 4 1
execute at @s run particle campfire_cosy_smoke ~ ~ ~ .5 .5 .5 .01 5 normal @a[distance=..32]
execute at @s run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 .02 20 normal @a[distance=..32]
execute at @s run particle flame ~ ~ ~ 0 0 0 .25 100 force @a[distance=..32]
execute at @s run particle large_smoke ~ ~ ~ 0 0 0 .1 100 force @a[distance=..32]
execute at @s run particle flash ~ ~ ~ 0 0 0 .1 10 force @a[distance=..32]

#runs the end-stuffs, ykyk
function bro:magic/superelec/aoe_end