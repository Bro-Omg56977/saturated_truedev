# stacks up time accel
tag @s[tag=sattimeaccel14] add sattimeaccel15
tag @s[tag=sattimeaccel13] add sattimeaccel14
tag @s[tag=sattimeaccel12] add sattimeaccel13
tag @s[tag=sattimeaccel11] add sattimeaccel12
tag @s[tag=sattimeaccel10] add sattimeaccel11
tag @s[tag=sattimeaccel9] add sattimeaccel10
tag @s[tag=sattimeaccel8] add sattimeaccel9
tag @s[tag=sattimeaccel7] add sattimeaccel8
tag @s[tag=sattimeaccel6] add sattimeaccel7
tag @s[tag=sattimeaccel5] add sattimeaccel6
tag @s[tag=sattimeaccel4] add sattimeaccel5
tag @s[tag=sattimeaccel3] add sattimeaccel4
tag @s[tag=sattimeaccel2] add sattimeaccel3
tag @s[tag=sattimeaccel] add sattimeaccel2
tag @s add sattimeaccel

#a decent overall effect
tag @s[tag=!sattimeacceleffect] add sattimeacceleffect

#custom effects for each stack. yes, this is based off the jojo heaven sequence
execute as @e[tag=sattimeaccel,tag=!sattimeaccel2,tag=!sattimeaccel3,tag=!sattimeaccel4,tag=!sattimeaccel5,tag=!sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s jump_boost 20 0
execute as @e[tag=sattimeaccel,tag=!sattimeaccel2,tag=!sattimeaccel3,tag=!sattimeaccel4,tag=!sattimeaccel5,tag=!sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kSpiral Staircase."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=!sattimeaccel3,tag=!sattimeaccel4,tag=!sattimeaccel5,tag=!sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s strength 20 0
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=!sattimeaccel3,tag=!sattimeaccel4,tag=!sattimeaccel5,tag=!sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kRhinoceros Beetle."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=!sattimeaccel4,tag=!sattimeaccel5,tag=!sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s haste 20 0
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=!sattimeaccel4,tag=!sattimeaccel5,tag=!sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kGhost Town."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=!sattimeaccel5,tag=!sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s saturation 20 0
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=!sattimeaccel5,tag=!sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kFig Tart."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=!sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s strength 20 1
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=!sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kRhinoceros Beetle."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s speed 20 0
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=!sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kSingularity Point."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s resistance 20 0
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=!sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kVia Dolorosa."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s strength 20 2
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=!sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kRhinoceros Beetle."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s speed 20 1
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=!sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kSingularity Point."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s resistance 20 1
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=!sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kGiotto."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s jump_boost 20 1
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=sattimeaccel11,tag=!sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kAngel."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=sattimeaccel11,tag=sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] run effect give @s resistance 20 2
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=sattimeaccel11,tag=sattimeaccel12,tag=!sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kHydrangea."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=sattimeaccel11,tag=sattimeaccel12,tag=sattimeaccel13,tag=!sattimeaccel14] run effect give @s speed 20 2
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=sattimeaccel11,tag=sattimeaccel12,tag=sattimeaccel13,tag=!sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kSingularity Point."

execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=sattimeaccel11,tag=sattimeaccel12,tag=sattimeaccel13,tag=sattimeaccel14] run effect give @s speed 20 20
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=sattimeaccel11,tag=sattimeaccel12,tag=sattimeaccel13,tag=sattimeaccel14] run effect give @s strength 20 2
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=sattimeaccel11,tag=sattimeaccel12,tag=sattimeaccel13,tag=sattimeaccel14] run effect give @s resistance 20 2
execute as @e[tag=sattimeaccel,tag=sattimeaccel2,tag=sattimeaccel3,tag=sattimeaccel4,tag=sattimeaccel5,tag=sattimeaccel6,tag=sattimeaccel7,tag=sattimeaccel8,tag=sattimeaccel9,tag=sattimeaccel10,tag=sattimeaccel11,tag=sattimeaccel12,tag=sattimeaccel13,tag=sattimeaccel14] at @s run title @e[distance=..15,type=player] actionbar "§2§kSecret Emperor!"

#once you get 12 stacks starts these functions
execute as @e[tag=sattimeacceleffect] if entity @s[tag=sattimeaccel15] run function bro:magic/timeaccel_activate
execute as @e[tag=sattimeacceleffect] if entity @s[tag=sattimeaccel15] run function bro:magic/timeaccel_remove