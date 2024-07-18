# Do the thing
execute as @s in minecraft:overworld run tp @s ~ 320 ~

# sets scoreboard to teleport after 3 seconds
scoreboard players set @s wrldtp 2

# Weeeeee
effect give @s slow_falling 30 1 true

# Revoke the advancement bro:lim_to_wrld from all players
advancement revoke @s only bro:lim_to_wrld

# No lore here, just an end poem quote

title @s actionbar "§it thought itself human, on the thin crust of a spinning globe..."