#makes it so that entity hit has around a x% chance of the effect actually happening

scoreboard objectives add sat.dimdis.chance dummy
execute store result score @s sat.dimdis.chance run random value 1..4

# adds tag
execute if score @s sat.dimdis.chance matches 1 run tag @s[tag=!sat.dimensional.disorintation] add sat.dimensional.disorintation

#runs next functions

execute as @e[tag=sat.dimensional.disorintation] at @s run function bro:magic/dimension