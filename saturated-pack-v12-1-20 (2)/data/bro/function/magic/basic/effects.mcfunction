schedule function bro:magic/basic/effects 1s replace
#basic ressurection showing effect
execute as @e[tag=zombieressurect] at @s run particle block{block_state:{Name:sand}} ~0.2 ~1 ~0.2 0 0 0 0.15 5
execute as @e[tag=zombieressurect2] at @s run particle block{block_state:{Name:sand}} ~0.2 ~1 ~-0.2 0 0 0 0.15 5
execute as @e[tag=zombieressurect3] at @s run particle block{block_state:{Name:sand}} ~-0.2 ~1 ~0.2 0 0 0 0.15 5
execute as @e[tag=zombieressurect4] at @s run particle block{block_state:{Name:sand}} ~-0.2 ~1 ~-0.2 0 0 0 0.15 5

#basic ressurection showing effect, but for stray
execute as @e[tag=skeletonanimate] at @s run particle block{block_state:{Name:snow_block}} ~0.2 ~1 ~0.2 0 0 0 0.15 5
execute as @e[tag=skeletonanimate2] at @s run particle block{block_state:{Name:snow_block}} ~0.2 ~1 ~-0.2 0 0 0 0.15 5
execute as @e[tag=skeletonanimate3] at @s run particle block{block_state:{Name:snow_block}} ~-0.2 ~1 ~0.2 0 0 0 0.15 5
execute as @e[tag=skeletonanimate4] at @s run particle block{block_state:{Name:snow_block}} ~-0.2 ~1 ~-0.2 0 0 0 0.15 5

#basic ressurection showing effect, but for pillager
execute as @e[tag=pillageranimate] at @s run particle block{block_state:{Name:dark_oak_planks}} ~0.2 ~1 ~0.2 0 0 0 0.15 5
execute as @e[tag=pillageranimate2] at @s run particle block{block_state:{Name:dark_oak_planks}} ~0.2 ~1 ~-0.2 0 0 0 0.15 5
execute as @e[tag=pillageranimate3] at @s run particle block{block_state:{Name:dark_oak_planks}} ~-0.2 ~1 ~0.2 0 0 0 0.15 5
execute as @e[tag=pillageranimate4] at @s run particle block{block_state:{Name:dark_oak_planks}} ~-0.2 ~1 ~-0.2 0 0 0 0.15 5