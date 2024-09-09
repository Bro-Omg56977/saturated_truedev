#yet another scoreboard
execute as @e[tag=bropresentinvoid] at @s run scoreboard objectives add bro.firerandomizer.1 dummy
execute as @e[tag=bropresentinvoid] at @s run execute store result score @s bro.firerandomizer.1 run random value 1..3

#some pose they can be in
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.1 matches 1 run summon arrow ~ ~ ~ {Fire:9999}
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.1 matches 2 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 fire replace air
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.1 matches 2 run execute positioned ^ ^ ^ as @e[tag=bropresentinvoid] at @s run playsound item.firecharge.use block @s ^ ^ ^-2 1
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.1 matches 3 run scoreboard objectives add bro.firetick.1 dummy
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.1 matches 3 run scoreboard players set @s bro.firetick.1 1
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.1 matches 3 run function bro:misc/fire0
execute as @e[tag=bropresentinvoid] at @s if score @s bro.firerandomizer.1 matches 3 run schedule function bro:misc/fire_stop 5s replace
