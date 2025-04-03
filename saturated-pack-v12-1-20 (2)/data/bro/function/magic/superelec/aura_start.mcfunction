#makes it so that entity hit has around a 10% chance of the effect actually happening

scoreboard objectives add sat.elecaura.chance dummy
execute store result score @s sat.elecaura.chance run random value 1..4

# adds tag
execute if score @s sat.elecaura.chance matches 1 run tag @s[tag=!sat.elecaura.user] add sat.elecaura.user

#runs next functions

execute as @e[tag=sat.elecaura.user] at @s run function bro:magic/superelec/aura0