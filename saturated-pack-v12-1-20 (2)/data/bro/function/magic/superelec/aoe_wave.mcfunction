scoreboard players add @s sat.other 1
particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.01 5 force @a[distance=..128]
execute unless score @s sat.other matches 30.. run function bro:magic/superelec/aoe_wave
execute if score @s sat.other matches 30.. run scoreboard players reset @s sat.other