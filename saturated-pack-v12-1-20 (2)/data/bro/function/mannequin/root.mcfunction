#creates a scoreboard that randomizes which random effect happens
execute as @e[tag=bropresentinvoid] at @s run scoreboard objectives add bro.mannequinranzomizer.1 dummy
execute as @e[tag=bropresentinvoid] at @s run execute store result score @s bro.mannequinranzomizer.1 run random value 1..12

# here's the randizer

execute as @e[tag=bropresentinvoid] at @s run execute if score @s bro.mannequinranzomizer.1 matches 1..10 run function bro:mannequin/neutral
execute as @e[tag=bropresentinvoid] at @s run execute if score @s bro.mannequinranzomizer.1 matches 11 run function bro:mannequin/hostile
execute as @e[tag=bropresentinvoid] at @s run execute if score @s bro.mannequinranzomizer.1 matches 12 run function bro:mannequin/friendly
