#part 1 i guess
execute in bro:void run forceload add ~ ~ ~ ~

execute in bro:void run tp @s ~ 64 ~

# should give player the nessessary tag
tag @s add bropresentinvoid

#puts scoreboard at 1
scoreboard players set @s sat.invoid 1

#rip forceload lol
forceload remove ~ ~ ~ ~