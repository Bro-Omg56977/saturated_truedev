#makes it so that entity hit has around a 10% chance of the effect actually happening

scoreboard objectives add sat.elecbomb.chance dummy
execute store result score @s sat.elecbomb.chance run random value 1..4

# adds tag
execute if score @s sat.elecbomb.chance matches 1 run tag @s[tag=!sat.superelecbomb.immune] add sat.superelecbomb.immune

#runs next functions

execute as @e[tag=sat.superelecbomb.immune] at @s run function bro:magic/superelec/bomb_start