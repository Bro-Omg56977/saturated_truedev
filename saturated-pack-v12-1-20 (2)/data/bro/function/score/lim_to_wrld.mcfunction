#re-does the function with hopefully more preformance than if pit into tick.mcfunction
schedule function bro:score/lim_to_wrld 1s replace

#teleports the player to where they're supposed to be
execute as @e[scores={sattp=1}] at @s run tp @s ~ 320 ~

#-1 score ever second
scoreboard players remove @e[scores={sattp=1..}] sattp 1
