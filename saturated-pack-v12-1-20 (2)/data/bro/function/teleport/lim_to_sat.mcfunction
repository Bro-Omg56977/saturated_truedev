# Do the thing
execute as @s in bro:saturated run tp @s ~ 320 ~

# sets scoreboard to teleport after 3 seconds
scoreboard players set @s sattp 2

# Weeeeee
effect give @s slow_falling 30 1 true

# Revoke the advancement bro:lim_to_sat from all players
advancement revoke @a only bro:lim_to_sat

# No lore here, just an end poem quote