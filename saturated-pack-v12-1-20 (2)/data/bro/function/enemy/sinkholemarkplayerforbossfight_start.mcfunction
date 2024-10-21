#tells the player a message
execute as @e[tag=satsinkholebossplayer] at @s run tellraw @s "§aYou feel as if something isn't right..."

#particle effects
execute as @e[tag=satsinkholebossplayer] at @s run particle minecraft:trial_omen ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=satsinkholebossplayer] at @s run particle minecraft:trial_spawner_detection_ominous ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satsinkholebossplayer] at @s run particle minecraft:trial_omen ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=satsinkholebossplayer] at @s run particle minecraft:trial_spawner_detection_ominous ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satsinkholebossplayer] at @s run particle minecraft:trial_omen ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=satsinkholebossplayer] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=satsinkholebossplayer] at @s run particle minecraft:trial_omen ~ ~0.6 ~ 0 0 0 0.01 10

#ominous trial effect
execute as @e[tag=satsinkholebossplayer] at @s run effect give @s trial_omen 360000 0 true

#final part, gets rid of tags
execute as @e[tag=satsinkholebossplayer] at @s run function bro:enemy/sinkholemarkplayerforbossfight_remove