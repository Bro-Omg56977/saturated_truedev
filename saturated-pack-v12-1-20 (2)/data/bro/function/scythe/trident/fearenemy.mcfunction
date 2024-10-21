# gives the arrow a tag that hopefully works
execute as @e[tag=fearprojectile] run tag @e[tag=fearprojectile] remove fearprojectile
execute as @s at @s run tag @s[tag=!fearprojectile] add fearprojectile