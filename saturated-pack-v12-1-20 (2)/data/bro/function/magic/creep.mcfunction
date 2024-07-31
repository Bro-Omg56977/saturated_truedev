# stacks up fireworks
execute at @e[tag=powderofguneffect] at @s run playsound minecraft:entity.zombie.attack_iron_door ambient
schedule function bro:magic/creep_activate 3s replace
tag @s[tag=powderofgun3] add powderofgun4
tag @s[tag=powderofgun2] add powderofgun3
tag @s[tag=powderofgun] add powderofgun2
tag @s add powderofgun
tag @s[tag=!powderofguneffect] add powderofguneffect
execute as @e[tag=powderofguneffect] if entity @s[tag=powderofgun4] run function bro:magic/creep_activate