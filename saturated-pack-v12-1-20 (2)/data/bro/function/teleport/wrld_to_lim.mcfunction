execute if block ~ ~1 ~ minecraft:sand run function bro:teleport/wrld_to_lim0
execute if block ~ ~1 ~ minecraft:red_sand run function bro:teleport/wrld_to_lim0
execute if block ~ ~1 ~ minecraft:gravel run function bro:teleport/wrld_to_lim0
advancement revoke @s only bro:overworld_to_lim0
advancement revoke @s only bro:overworld_to_lim1
advancement revoke @s only bro:overworld_to_lim2

# should give player the nessessary tag
tag @s add bropresentinvoid

#puts scoreboard at 1
scoreboard players set @s sat.invoid 1

#hehehehaw spookers time
schedule function bro:root/rootfunction 360s