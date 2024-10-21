# Removes a tag
execute as @e[tag=runiceffect] run tag @s remove runiceffect
#particle effects 1
execute as @e[tag=runicprojectile] at @s run particle minecraft:enchant ~0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=runicprojectile] at @s run particle minecraft:enchant ~0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=runicprojectile] at @s run particle minecraft:enchant ~-0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=runicprojectile] at @s run particle minecraft:enchant ~-0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=runicprojectile] at @s run particle minecraft:enchant ~ ~1 ~ 0 0 0 1 10
#schedules yet another function
execute as @e[tag=runicprojectile] at @s run schedule function bro:scythe/trident/runic_remove0 2s replace


