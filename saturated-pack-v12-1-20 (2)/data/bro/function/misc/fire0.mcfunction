
#yet another scoreboard
execute as @e[tag=bropresentinvoid] at @s run scoreboard objectives add bro.firerandomizer.2 dummy
execute as @e[tag=bropresentinvoid] at @s run execute store result score @s bro.firerandomizer.2 run random value 1..6

#fire random nearby
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 1 run fill ~10 ~ ~-9 ~10 ~ ~-9 fire
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 1 run execute positioned ~ ~ ~ as @e[tag=bropresentinvoid] at @s run playsound item.flintandsteel.use block @s ~10 ~ ~-9 1
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 2 run fill ~-5 ~ ~-2 ~-5 ~ ~-2 fire
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 2 run execute positioned ~ ~ ~ as @e[tag=bropresentinvoid] at @s run playsound item.flintandsteel.use block @s ~-5 ~ ~-2 1
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 3 run fill ~4 ~ ~-7 ~14 ~ ~-7 fire
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 3 run execute positioned ~ ~ ~ as @e[tag=bropresentinvoid] at @s run playsound item.flintandsteel.use block @s ~4 ~ ~-7 1
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 4 run fill ~-2 ~ ~4 ~-2 ~ ~4 fire
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 4 run execute positioned ~ ~ ~ as @e[tag=bropresentinvoid] at @s run playsound item.flintandsteel.use block @s ~-2 ~ ~4 1
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 5 run fill ~4 ~ ~5 ~4 ~ ~5 fire
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 5 run execute positioned ~ ~ ~ as @e[tag=bropresentinvoid] at @s run playsound item.flintandsteel.use block @s ~4 ~ ~5 1
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 6 run fill ~-8 ~ ~11 ~-8 ~ ~11 fire
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.2 matches 6 run execute positioned ~ ~ ~ as @e[tag=bropresentinvoid] at @s run playsound item.flintandsteel.use block @s ~-8 ~ ~11 1

#repeats if score is one
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firetick.1 matches 1 run schedule function bro:misc/fire0 2 replace