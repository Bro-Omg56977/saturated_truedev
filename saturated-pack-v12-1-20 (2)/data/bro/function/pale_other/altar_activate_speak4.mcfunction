#dialog sound effects
execute as @a[tag=sat.altar.theonewhointeracted] at @s run execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker.activated,sort=nearest,distance=..32] at @s run playsound entity.shulker_bullet.hit ambient @a[distance=..32] ~ ~ ~ 2 0.75
execute as @a[tag=sat.altar.theonewhointeracted] at @s run execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker.activated,sort=nearest,distance=..32] at @s run playsound ambient.soul_sand_valley.mood ambient @a[distance=..32] ~ ~ ~ 2 0.75

#dialog
execute as @a[tag=sat.altar.theonewhointeracted] at @s run execute as @e[type=marker,limit=1,tag=sat.altar.interaction.marker.activated,sort=nearest,distance=..32] at @s run tellraw @a[distance=..32] "§fGive me something I want, §8And I will give you something you do not know you even want."

#schedules next function
execute as @a[tag=sat.altar.theonewhointeracted] at @s run execute as @e[type=interaction,limit=1,tag=sat.altar.interaction.entity.readdlater,sort=nearest,distance=..32] at @s run function bro:pale_other/altar_interact_enable