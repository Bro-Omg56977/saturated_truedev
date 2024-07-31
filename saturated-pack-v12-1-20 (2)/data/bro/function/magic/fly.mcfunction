# stacks up fireworks
execute at @e[tag=bigboomeffect] at @s run playsound minecraft:entity.zombie.attack_iron_door ambient
schedule function bro:magic/fly_activate 3s replace
tag @s[tag=bigboom3] add bigboom4
tag @s[tag=bigboom2] add bigboom3
tag @s[tag=bigboom] add bigboom2
tag @s add bigboom
tag @s[tag=!bigboomeffect] add bigboomeffect
execute as @e[tag=bigboom4] if entity @s[tag=bigboom4] run function bro:magic/fly_activate