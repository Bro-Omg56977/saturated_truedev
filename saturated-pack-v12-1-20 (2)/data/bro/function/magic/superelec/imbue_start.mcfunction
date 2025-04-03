#makes it so that entity hit has around a 20% chance of the effect actually happening

scoreboard objectives add bro.elecimbue.chance dummy
execute store result score @s bro.elecimbue.chance run random value 1..5

# adds tag and plays sfx

execute if score @s bro.elecimbue.chance matches 1 run tag @s[tag=!broelecimbueeffect] add broelecimbueeffect



#particle and sound effect if they fail the check

particle minecraft:electric_spark ~0.2 ~1 ~-0.2 0 0 0 1 34
particle minecraft:electric_spark ~-0.2 ~1 ~-0.2 0 0 0 1 34
particle minecraft:electric_spark ~ ~1.4 ~ 0 0 0 1 34

#runs next function
execute as @e[tag=broelecimbueeffect] run function bro:magic/superelec/imbue