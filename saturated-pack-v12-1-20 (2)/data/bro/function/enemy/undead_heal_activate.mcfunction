# Display particles when effect, then summons a husk
execute as @e[tag=healtheundead4] at @s run particle raid_omen ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=healtheundead4] at @s run particle raid_omen ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=healtheundead4] at @s run particle raid_omen ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=healtheundead4] at @s run particle raid_omen ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=healtheundead4] at @s run particle raid_omen ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=healtheundead4] at @s run particle raid_omen ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=healtheundead4] at @s run particle raid_omen ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=healtheundead4] at @s run effect give @s instant_damage 1 1 true
execute as @e[tag=healtheundead4] run function bro:enemy/undead_heal_remove
