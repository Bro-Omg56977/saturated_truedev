# Removes main tag, then remove effect tag after 20 s
execute as @e[tag=supereffect] run tag @s remove supereffect
execute as @e[tag=supereffects] run schedule function bro:scythe/super_remove0 20s