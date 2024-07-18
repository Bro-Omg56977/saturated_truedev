# Do the thing
execute as @s in bro:saturated run tp @s ~ 320 ~

# sets scoreboard to teleport after 3 seconds
scoreboard players set @s sattp 2

# Weeeeee
effect give @s slow_falling 30 1 true

# Revoke the advancement bro:lim_to_wrld from all players
advancement revoke @a only bro:lim_to_wrld

# No lore here, just an end poem quote

title @s actionbar "§3Sometimes the player dreamed it was lost in a story."