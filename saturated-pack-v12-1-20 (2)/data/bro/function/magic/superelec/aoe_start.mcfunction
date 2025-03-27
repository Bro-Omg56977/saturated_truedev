#makes it so that entity hit has around a 10% chance of the effect actually happening

scoreboard objectives add sat.elecaoe.chance dummy
execute store result score @s sat.elecaoe.chance run random value 1..4

# adds tag
execute if score @s sat.elecaoe.chance matches 1 run tag @s[tag=!sat.elecaoe.immune] add sat.elecaoe.immune

#runs next functions

execute as @e[tag=sat.elecaoe.immune] at @s run function bro:magic/superelec/aoe_wave
execute as @e[tag=sat.elecaoe.immune] at @s run function bro:magic/superelec/aoe0