# Removes main tag, then remove effect tag after 20 s
execute as @e[tag=markereffect] run tag @s remove markereffect
execute as @e[tag=markereffects] run schedule function bro:scythe/marked_remove0 20s replace