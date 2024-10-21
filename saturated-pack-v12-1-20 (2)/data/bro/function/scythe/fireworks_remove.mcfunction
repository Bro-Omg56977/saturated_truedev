# Removes main tag, then does part 2 of the command itself
execute as @e[tag=fireworkeffect] run tag @s remove fireworkeffect
execute as @e[tag=fireworkeffects] run schedule function bro:scythe/fireworks_remove0 2s replace