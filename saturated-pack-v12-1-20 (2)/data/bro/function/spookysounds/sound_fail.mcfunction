execute as @e[tag=brosoundeffectmaker] at @s run scoreboard players set @s bro.soundtick.1 0
execute as @e[tag=brosoundeffectmaker] at @s run teleport @s ~ ~-300 ~
execute as @e[tag=brosoundeffectmaker] at @s run damage @s 1000 generic_kill
execute as @e[tag=brosoundeffectmaker] at @s run tag @s remove brosoundeffectmaker