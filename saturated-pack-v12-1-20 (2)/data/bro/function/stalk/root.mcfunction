#creates a scoreboard that randomizes which random effect happens
execute as @e[tag=bropresentinvoid] at @s run scoreboard objectives add bro.stalkrandomizer.1 dummy
execute as @e[tag=bropresentinvoid] at @s run execute store result score @s bro.stalkrandomizer.1 run random value 1..3

# here's the randizer

execute as @e[tag=bropresentinvoid] if score @s bro.stalkrandomizer.1 matches 1 run function bro:stalk/watch
execute as @e[tag=bropresentinvoid] if score @s bro.stalkrandomizer.1 matches 2 run function bro:stalk/approach
execute as @e[tag=bropresentinvoid] if score @s bro.stalkrandomizer.1 matches 3 run function bro:stalk/running
