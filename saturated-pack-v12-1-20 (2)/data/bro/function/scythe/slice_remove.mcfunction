# Removes main tag, then does part 2 of the command itself
execute as @e[tag=atomsliceeffect] run tag @s remove atomsliceeffect
execute as @e[tag=atomsliceeffects] run schedule function bro:scythe/slice_remove0 2s replace