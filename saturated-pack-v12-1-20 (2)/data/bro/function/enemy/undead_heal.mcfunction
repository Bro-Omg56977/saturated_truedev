# stacks up undead heal
tag @s[tag=healtheundead3] add healtheundead4
tag @s[tag=healtheundead2] add healtheundead3
tag @s[tag=healtheundead] add healtheundead2
tag @s add healtheundead
execute as @e[tag=healtheundead4] if entity @s[tag=healtheundead4] run function bro:enemy/undead_heal_activate