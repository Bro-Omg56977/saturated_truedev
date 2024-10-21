#yet another scoreboard
execute as @e[tag=bropresentinvoid] at @s run scoreboard objectives add bro.soundsrandomizer.2 dummy
execute as @e[tag=bropresentinvoid] at @s run execute store result score @s bro.soundsrandomizer.2 run random value 1..6

#some pose they can be in
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 1 run summon husk ~10 ~ ~-9 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["brosoundeffectmaker"],active_effects:[{id:fire_resistance,duration:999999,amplifier:1,show_particles:0b},{id:invisibility,duration:999999,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b},{id:weakness,duration:999999,amplifier:9,show_particles:0b}]}
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 2 run summon husk ~-25 ~ ~-20 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["brosoundeffectmaker"],active_effects:[{id:fire_resistance,duration:999999,amplifier:1,show_particles:0b},{id:invisibility,duration:999999,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b},{id:weakness,duration:999999,amplifier:9,show_particles:0b}]}
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 3 run summon husk ~14 ~ ~-17 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["brosoundeffectmaker"],active_effects:[{id:fire_resistance,duration:999999,amplifier:1,show_particles:0b},{id:invisibility,duration:999999,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b},{id:weakness,duration:999999,amplifier:9,show_particles:0b}]}
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 4 run summon husk ~-12 ~ ~14 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["brosoundeffectmaker"],active_effects:[{id:fire_resistance,duration:999999,amplifier:1,show_particles:0b},{id:invisibility,duration:999999,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b},{id:weakness,duration:999999,amplifier:9,show_particles:0b}]}
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 5 run summon husk ~14 ~ ~15 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["brosoundeffectmaker"],active_effects:[{id:fire_resistance,duration:999999,amplifier:1,show_particles:0b},{id:invisibility,duration:999999,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b},{id:weakness,duration:999999,amplifier:9,show_particles:0b}]}
execute as @e[tag=bropresentinvoid] at @s if score @s bro.soundsrandomizer.2 matches 6 run summon husk ~-8 ~ ~11 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["brosoundeffectmaker"],active_effects:[{id:fire_resistance,duration:999999,amplifier:1,show_particles:0b},{id:invisibility,duration:999999,amplifier:1,show_particles:0b},{id:speed,duration:999999,amplifier:5,show_particles:0b},{id:weakness,duration:999999,amplifier:9,show_particles:0b}]}
execute as @e[tag=brosoundeffectmaker] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air destroy
execute as @e[tag=brosoundeffectmaker] at @s run schedule function bro:spookysounds/damage 1s replace
#teleports the mannequin behind then and then plays sound effects
execute as @e[tag=brosoundeffectmaker] run function bro:spookysounds/check1
execute as @e[tag=brosoundeffectmaker] run schedule function bro:spookysounds/sound_fail 300s replace