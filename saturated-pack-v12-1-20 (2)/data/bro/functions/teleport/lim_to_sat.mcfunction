# Do the thing
execute as @a in bro:saturated run tp @s ~ ~ ~

# Schedule teleportation to ensure it happens after dimension change
schedule function bro:teleport/teleporter 1t

# Weeeeee
effect give @s slow_falling 30 1 true

# Revoke the advancement bro:lim_to_wrld from all players
advancement revoke @a only bro:lim_to_wrld

# No lore here, just an end poem quote

title @a actionbar "§3Sometimes the player dreamed it was lost in a story."