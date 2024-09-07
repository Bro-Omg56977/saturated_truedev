#creates a scoreboard that randomizes the time the function repeats
execute as @e[tag=bropresentinvoid] at @s run execute if score @s sat.invoid matches 1 run scoreboard objectives add bro.rootrandomize.1 dummy
execute as @e[tag=bropresentinvoid] at @s run execute if score @s sat.invoid matches 1 run execute store result score @s bro.rootrandomize.1 run random value 1..4

# here's the time randizer

execute as @e[tag=bropresentinvoid] at @s run execute if score @s bro.rootrandomize.1 matches 1 run execute if score @s sat.invoid matches 1 run schedule function bro:root/rootfunction 300s replace
execute as @e[tag=bropresentinvoid] at @s run execute if score @s bro.rootrandomize.1 matches 2 run execute if score @s sat.invoid matches 1 run schedule function bro:root/rootfunction 600s replace
execute as @e[tag=bropresentinvoid] at @s run execute if score @s bro.rootrandomize.1 matches 3 run execute if score @s sat.invoid matches 1 run schedule function bro:root/rootfunction 900s replace
execute as @e[tag=bropresentinvoid] at @s run execute if score @s bro.rootrandomize.1 matches 4 run execute if score @s sat.invoid matches 1 run schedule function bro:root/rootfunction 1200s replace

#creates a scoreboard that randomizes which random effect happens
execute as @e[tag=bropresentinvoid] at @s run execute if score @s sat.invoid matches 1 run scoreboard objectives add bro.rootrandomize.2 dummy
execute as @e[tag=bropresentinvoid] at @s run execute if score @s sat.invoid matches 1 run execute store result score @s bro.rootrandomize.2 run random value 1..4

# here's the randizer

execute as @e[tag=bropresentinvoid] at @s run execute if score @s bro.rootrandomize.2 matches 1 run execute if score @s sat.invoid matches 1 run function bro:mannequin/root
execute as @e[tag=bropresentinvoid] at @s run execute if score @s bro.rootrandomize.2 matches 2 run execute if score @s sat.invoid matches 1 run function bro:misc/root
execute as @e[tag=bropresentinvoid] at @s run execute if score @s bro.rootrandomize.2 matches 3 run execute if score @s sat.invoid matches 1 run function bro:spookysounds/root
execute as @e[tag=bropresentinvoid] at @s run execute if score @s bro.rootrandomize.2 matches 4 run execute if score @s sat.invoid matches 1 run function bro:stalk/root
