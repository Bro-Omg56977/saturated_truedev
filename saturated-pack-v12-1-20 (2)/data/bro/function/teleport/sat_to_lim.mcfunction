execute in bro:void align xz run tp @s ~ 64 ~
advancement revoke @s only bro:sat_to_lim

# should give player the nessessary tag
tag @s add bropresentinvoid

#puts scoreboard at 1
scoreboard players set @s sat.invoid 1

#hehehehaw spookers time
schedule function bro:root/rootfunction 360s