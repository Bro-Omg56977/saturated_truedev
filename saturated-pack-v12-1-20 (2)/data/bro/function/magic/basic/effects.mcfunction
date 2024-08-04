schedule function bro:magic/basic/effects 1s replace
#basic ressurection showing effect
execute as @e[tag=zombieressurect] at @s run particle block{block_state:{Name:dirt}} ~0.2 ~1 ~0.2 0 0 0 0.15 5
execute as @e[tag=zombieressurect2] at @s run particle block{block_state:{Name:dirt}} ~0.2 ~1 ~-0.2 0 0 0 0.15 5
execute as @e[tag=zombieressurect3] at @s run particle block{block_state:{Name:dirt}} ~-0.2 ~1 ~0.2 0 0 0 0.15 5
execute as @e[tag=zombieressurect4] at @s run particle block{block_state:{Name:dirt}} ~-0.2 ~1 ~-0.2 0 0 0 0.15 5