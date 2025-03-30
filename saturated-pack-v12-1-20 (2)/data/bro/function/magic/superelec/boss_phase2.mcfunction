# stacks up the boss attack
tag @s[tag=sat.aquaboss.activate.3] add sat.aquaboss.activate.4
tag @s[tag=sat.aquaboss.activate.2] add sat.aquaboss.activate.3
tag @s[tag=sat.aquaboss.activate.1] add sat.aquaboss.activate.2
tag @s add sat.aquaboss.activate.1

#le classic broom g randomizer
execute as @e[tag=sat.aquaboss.activate.4] at @s run scoreboard objectives add sat.aquaboss.attackchances dummy
execute as @e[tag=sat.aquaboss.activate.4] at @s run execute store result score @s sat.aquaboss.attackchances run random value 1..3

# adds tag
execute as @e[tag=sat.aquaboss.activate.4] at @s run execute if score @s sat.aquaboss.attackchances matches 1 run tag @s[tag=!brobursteffect] add brobursteffect
execute as @e[tag=sat.aquaboss.activate.4] at @s run execute if score @s sat.aquaboss.attackchances matches 1 run function bro:magic/superelec/burst_start
execute as @e[tag=sat.aquaboss.activate.4] at @s run execute if score @s sat.aquaboss.attackchances matches 2 run tag @s[tag=!sat.superelecbomb.immune] add sat.superelecbomb.immune
execute as @e[tag=sat.aquaboss.activate.4] at @s run execute if score @s sat.aquaboss.attackchances matches 2 run function bro:magic/superelec/bomb_earlier_start
execute as @e[tag=sat.aquaboss.activate.4] at @s run execute if score @s sat.aquaboss.attackchances matches 3 run tag @s[tag=!sat.elecaoe.immune] add sat.elecaoe.immune
execute as @e[tag=sat.aquaboss.activate.4] at @s run execute if score @s sat.aquaboss.attackchances matches 3 run function bro:magic/superelec/aoe_start

#generic remove function
execute if entity @s[tag=sat.aquaboss.activate.4] run function bro:magic/superelec/boss_removetags