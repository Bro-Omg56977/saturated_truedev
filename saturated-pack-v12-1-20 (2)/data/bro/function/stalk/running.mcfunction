#yet another scoreboard
execute as @e[tag=bropresentinvoid] at @s run scoreboard objectives add bro.soundsrandomizer.2 dummy
execute as @e[tag=bropresentinvoid] at @s run execute store result score @s bro.soundsrandomizer.2 run random value 1..6

#some pose they can be in
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 1 run summon wither_skeleton ~20 ~50 ~-18 {Invulnerable:1b,PersistenceRequired:1b,Tags:["brostalker"],active_effects:[{id:slow_falling,duration:200,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b}]}
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 2 run summon wither_skeleton ~-25 ~50 ~-20 {Invulnerable:1b,PersistenceRequired:1b,Tags:["brostalker"],active_effects:[{id:slow_falling,duration:200,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b}]}
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 3 run summon wither_skeleton ~24 ~50 ~-27 {Invulnerable:1b,PersistenceRequired:1b,Tags:["brostalker"],active_effects:[{id:slow_falling,duration:200,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b}]}
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 4 run summon wither_skeleton ~-22 ~50 ~24 {Invulnerable:1b,PersistenceRequired:1b,Tags:["brostalker"],active_effects:[{id:slow_falling,duration:200,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b}]}
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 5 run summon wither_skeleton ~24 ~50 ~25 {Invulnerable:1b,PersistenceRequired:1b,Tags:["brostalker"],active_effects:[{id:slow_falling,duration:200,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b}]}
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 6 run summon wither_skeleton ~-18 ~50 ~21 {Invulnerable:1b,PersistenceRequired:1b,Tags:["brostalker"],active_effects:[{id:slow_falling,duration:200,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b}]}
execute as @e[tag=brostalker] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air destroy
execute as @e[tag=brostalker] at @s run schedule function bro:stalk/damage 1s replace
execute as @e[tag=brostalker] at @s run tp @s ^ ^ ^-2 facing entity @e[tag=bropresentinvoid,limit=1]
#teleports the mannequin behind then and then plays sound effects
execute as @e[tag=brostalker] run function bro:stalk/check_run
execute as @e[tag=brostalker] run schedule function bro:stalk/dissapear 300s replace