# gives the arrow a tag that hopefully works
execute as @e[tag=infectarrow] run tag @e[tag=infectarrow] remove infectarrow
execute as @s at @s run tag @s[tag=!infectarrow] add infectarrow