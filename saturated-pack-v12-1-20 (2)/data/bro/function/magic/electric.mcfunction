# stacks up electric
execute at @e[tag=electriceffect] at @s run playsound minecraft:entity.zombie.attack_iron_door ambient
schedule function bro:magic/electric_activate 3s replace
tag @s[tag=electric3] add electric4
tag @s[tag=electric2] add electric3
tag @s[tag=electric] add electric2
tag @s add electric
tag @s[tag=!electriceffect] add electriceffect
execute as @e[tag=electric4] if entity @s[tag=electric4] run function bro:magic/electric_activate