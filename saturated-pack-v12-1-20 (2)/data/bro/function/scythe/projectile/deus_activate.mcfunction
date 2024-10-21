#spreads the tag one more time before literally evicerating them. then runs remove tag

execute as @e[tag=machinaarrow,tag=!machinasource] at @s run tag @e[tag=!machinaarrow,tag=!machinasource,distance=..20] add machinaarrow
execute as @e[tag=machinaarrow,tag=!machinasource] at @s run effect give @s minecraft:weakness 5 5
execute as @e[tag=machinaarrow,tag=!machinasource] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=machinaarrow,tag=!machinasource] run effect give @s[type=!#undead] minecraft:instant_damage 10 10
execute as @e[tag=machinaarrow,tag=!machinasource] run effect give @s[type=#undead] minecraft:instant_health 10 10
execute as @e[tag=machinasource] run schedule function bro:scythe/projectile/deus_remove 1 replace