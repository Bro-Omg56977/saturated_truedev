# gives the arrow a tag that hopefully works
execute as @e[tag=conduitprojectile] run tag @e[tag=conduitprojectile] remove conduitprojectile
execute as @s at @s run tag @s[tag=!conduitprojectile] add conduitprojectile