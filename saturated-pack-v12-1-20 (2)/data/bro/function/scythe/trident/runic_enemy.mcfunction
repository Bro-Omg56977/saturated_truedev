# gives the arrow a tag that hopefully works
execute as @e[tag=runicprojectile] run tag @e[tag=runicprojectile] remove runicprojectile
execute as @s at @s run tag @s[tag=!runicprojectile] add runicprojectile