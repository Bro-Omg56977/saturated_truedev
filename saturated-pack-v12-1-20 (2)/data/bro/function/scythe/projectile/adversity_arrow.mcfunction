# gives the arrow a tag that hopefully works
execute as @e[tag=adversityarrow] run tag @e[tag=adversityarrow] remove adversityarrow
execute as @s at @s run tag @s[tag=!adversityarrow] add adversityarrow