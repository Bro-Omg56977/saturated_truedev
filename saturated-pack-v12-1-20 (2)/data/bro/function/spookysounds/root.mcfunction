#creates a scoreboard that randomizes which random effect happens
execute as @e[tag=bropresentinvoid] at @s run scoreboard objectives add bro.soundsrandomizer.1 dummy
execute as @e[tag=bropresentinvoid] at @s run execute store result score @s bro.soundsrandomizer.1 run random value 1..2

# here's the randizer

execute as @e[tag=bropresentinvoid] if score @s bro.soundsrandomizer.1 matches 1 run function bro:spookysounds/zombie_distancer
execute as @e[tag=bropresentinvoid] if score @s bro.soundsrandomizer.1 matches 2 run function bro:spookysounds/skeleton_distancer
