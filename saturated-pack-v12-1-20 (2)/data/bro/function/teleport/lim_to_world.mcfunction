# Do the thing
execute as @s in minecraft:overworld run tp @s ~ 320 ~

# sets scoreboard to teleport after 3 seconds
scoreboard players set @s sattp 2

# Weeeeee
effect give @s slow_falling 30 1 true

# Revoke the advancement bro:lim_to_wrld from all players
advancement revoke @s only bro:lim_to_wrld

# removes a tag lmao
tag @s remove bropresentinvoid

#reduces scoreboard to 0 i think
scoreboard players set @s sat.invoid 0