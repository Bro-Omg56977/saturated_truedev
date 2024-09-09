#dodgy
scoreboard objectives add sat.dodge.chance dummy
execute store result score @s sat.dodge.chance run random value 1..2

#it's yet another tag addition
execute if score @s sat.dodge.chance matches 1 run tag @s[tag=!satsinkholedodge] add satsinkholedodge
execute if score @s sat.dodge.chance matches 1 run playsound minecraft:block.respawn_anchor.charge ambient @s[tag=satsinkholedodge]

#effects
execute as @e[tag=satsinkholedodge] at @s run particle minecraft:enchant ~0.2 ~1 ~0.2 0 0 0 0.1 10
execute as @e[tag=satsinkholedodge] at @s run particle minecraft:portal ~0.2 ~1 ~-0.2 0 0 0 0.1 10
execute as @e[tag=satsinkholedodge] at @s run particle minecraft:enchant ~-0.2 ~1 ~0.2 0 0 0 0.1 10
execute as @e[tag=satsinkholedodge] at @s run particle minecraft:portal ~-0.2 ~1 ~-0.2 0 0 0 0.1 10
execute as @e[tag=satsinkholedodge] at @s run particle minecraft:enchant ~ ~1 ~ 0 0 0 0.1 10
execute as @e[tag=satsinkholedodge] at @s run particle minecraft:portal ~ ~1.4 ~ 0 0 0 0.1 10
execute as @e[tag=satsinkholedodge] at @s run particle minecraft:enchant ~ ~0.6 ~ 0 0 0 0.1 10

#wow,another one.
execute as @e[tag=satsinkholedodge] as @s at @s run scoreboard objectives add sat.dodge.chance0 dummy
execute as @e[tag=satsinkholedodge] as @s at @s run execute store result score @s sat.dodge.chance0 run random value 1..6

#random teleport
execute as @e[tag=satsinkholedodge] as @s at @s if score @s sat.dodge.chance0 matches 1 run teleport @s ^2 ^1 ^2
execute as @e[tag=satsinkholedodge] as @s at @s if score @s sat.dodge.chance0 matches 2 run teleport @s ^2 ^1 ^-2
execute as @e[tag=satsinkholedodge] as @s at @s if score @s sat.dodge.chance0 matches 3 run teleport @s ^-2 ^1 ^2
execute as @e[tag=satsinkholedodge] as @s at @s if score @s sat.dodge.chance0 matches 4 run teleport @s ^-2 ^1 ^-2
execute as @e[tag=satsinkholedodge] as @s at @s if score @s sat.dodge.chance0 matches 5 run teleport @s ^1.4 ^1 ^0.6
execute as @e[tag=satsinkholedodge] as @s at @s if score @s sat.dodge.chance0 matches 6 run teleport @s ^-0.6 ^1 ^-1.4