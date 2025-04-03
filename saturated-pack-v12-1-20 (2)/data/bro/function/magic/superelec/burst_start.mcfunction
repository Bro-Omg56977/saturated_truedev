#makes it so that entity hit has around a 10% chance of the effect actually happening

scoreboard objectives add bro.burst.chance dummy
execute store result score @s bro.burst.chance run random value 1..10

# adds tag
execute if score @s bro.burst.chance matches 1 run tag @s[tag=!brobursteffect] add brobursteffect

#runs next functions
execute as @e[tag=brobursteffect] at @s run schedule function bro:magic/superelec/burstwarning1 0s replace
execute as @e[tag=brobursteffect] at @s run schedule function bro:magic/superelec/burstwarning2 0.5s replace
execute as @e[tag=brobursteffect] at @s run schedule function bro:magic/superelec/burstwarning3 1s replace
execute as @e[tag=brobursteffect] at @s run schedule function bro:magic/superelec/burst 1.5s replace