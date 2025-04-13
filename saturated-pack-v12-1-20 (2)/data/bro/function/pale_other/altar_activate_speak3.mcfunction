#dialog sound effects
execute as @a[tag=sat.altar.theonewhointeracted] at @s run execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker.activated,sort=nearest,distance=..32] at @s run playsound entity.shulker_bullet.hit ambient @a[distance=..32] ~ ~ ~ 2 0.75
execute as @a[tag=sat.altar.theonewhointeracted] at @s run execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker.activated,sort=nearest,distance=..32] at @s run playsound ambient.soul_sand_valley.mood ambient @a[distance=..32] ~ ~ ~ 2 0.75

#dialog
execute as @a[tag=sat.altar.theonewhointeracted] at @s run execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker.activated,sort=nearest,distance=..32] at @s run tellraw @a[distance=..32] "§8§kAh§r§8, §kNo matter§r§8. §kIt is not like you can understand me§r§8, §kanyways§r§8."

#schedules next function
execute as @a[tag=sat.altar.theonewhointeracted] at @s run execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker.activated,sort=nearest,distance=..32] at @s run schedule function bro:pale_other/altar_activate_speak4 2s replace