#re-does the function with hopefully more preformance than if pit into tick.mcfunction
schedule function bro:score/lim_to_wrld 1s replace

#teleports the player to where they're supposed to be
execute as @a[scores={sattp=1}] at @s run tp @s ~ 300 ~

#-1 score ever second
scoreboard players remove @a[scores={sattp=1..}] sattp 1
