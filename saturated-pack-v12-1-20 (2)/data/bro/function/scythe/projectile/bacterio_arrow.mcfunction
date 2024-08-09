# gives the arrow a tag that hopefully works
execute as @e[tag=bacterioarrow] run tag @e[tag=bacterioarrow] remove bacterioarrow
execute as @s at @s run tag @s[tag=!bacterioarrow] add bacterioarrow