# Removes all tags
execute as @e[tag=satobliterationuser] at @s run item replace entity @s weapon with air
execute as @e[tag=satobliterationuser] run tag @s remove satobliterationuser
execute as @e[tag=satobliteration] run tag @s remove satobliteration
