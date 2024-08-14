#speakds the effect to nearby victims
execute as @e[tag=conduitprojectile] at @s run tag @e[tag=!conduitprojectile,distance=..5] add conduitprojectile
#runs some particles
execute as @e[tag=conduitprojectile] at @s run particle minecraft:nautilus ~0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=conduitprojectile] at @s run particle minecraft:nautilus ~-0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=conduitprojectile] at @s run particle minecraft:nautilus ~ ~1 ~ 0 0 0 1 10
execute as @e[tag=conduitprojectile] at @s run particle minecraft:nautilus ~ ~0.6 ~ 0 0 0 1 10
#gives effect. could be benificial
execute as @e[tag=conduitprojectile,tag=!conduitbuff] at @s run effect give @s[type=!#minecraft:undead] minecraft:instant_damage 1 1
execute as @e[tag=conduitprojectile,tag=!conduitbuff] at @s run effect give @s[type=#minecraft:undead] minecraft:instant_health 1 1
execute as @e[tag=conduitprojectile,tag=conduitbuff] at @s run effect give @s minecraft:conduit_power 10 1
execute as @e[tag=conduitprojectile,tag=conduitbuff] at @s run effect give @s minecraft:instant_health 1 1