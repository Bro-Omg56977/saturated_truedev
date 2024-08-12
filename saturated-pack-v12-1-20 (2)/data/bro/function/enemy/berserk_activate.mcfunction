# Display particles when effect, then summons a husk
execute as @e[tag=skeletonberserk3] at @s run particle minecraft:angry_villager ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=skeletonberserk3] at @s run particle minecraft:angry_villager ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=skeletonberserk3] at @s run particle minecraft:angry_villager ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=skeletonberserk3] at @s run particle minecraft:angry_villager ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=skeletonberserk3] at @s run particle minecraft:angry_villager ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=skeletonberserk3] at @s run particle minecraft:angry_villager ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=skeletonberserk3] at @s run particle minecraft:angry_villager ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=skeletonberserk3] at @s run effect give @s strength 10 1 true
execute as @e[tag=skeletonberserk3] at @s run effect give @s resistance 10 1 true
execute as @e[tag=skeletonberserk3] at @s run effect give @s speed 10 2 true
execute as @e[tag=skeletonberserk3] run function bro:enemy/berserk_remove
