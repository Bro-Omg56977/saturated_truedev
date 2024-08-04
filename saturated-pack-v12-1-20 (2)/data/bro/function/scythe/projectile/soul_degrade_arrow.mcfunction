# gives the arrow a tag that hopefully works
execute as @e[tag=degradearrow] run tag @e[tag=degradearrow] remove degradearrow
execute as @s at @s run tag @s[tag=!degradearrow] add degradearrow