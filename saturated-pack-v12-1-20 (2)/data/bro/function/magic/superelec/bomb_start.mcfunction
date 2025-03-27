#said bat is the bomb. when it flies into an entity or block it will explode
summon bat ~ ~2.6 ~ {Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["sat.superelec.bomb"],active_effects:[{id:invisibility,duration:10000,amplifier:0,show_particles:0b}]}

#sound effects
playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 4 .8
playsound entity.firework_rocket.twinkle hostile @a[distance=..32] ~ ~ ~ 1 2
execute as @e[type=bat,limit=1,sort=nearest] at @s run particle large_smoke ~ ~ ~ .2 .2 .2 .05 20 force @a[distance=..64]

#using a scoreboard that is yet to be used. may or may not become a bug
execute as @e[tag=sat.superelec.bomb,limit=1,sort=nearest] at @s run scoreboard objectives add sat.kaboomtick.0 dummy
execute as @e[tag=sat.superelec.bomb,limit=1,sort=nearest] run scoreboard players set @s sat.kaboomtick.0 1

#goes to the tick part
execute as @e[tag=sat.superelec.bomb,limit=1,sort=nearest] run function bro:magic/superelec/bomb_tick