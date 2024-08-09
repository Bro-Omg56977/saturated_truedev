# stacks up implosion

schedule function bro:magic/implosion_activate 3s replace
tag @s[tag=implosion3] add implosion4
tag @s[tag=implosion2] add implosion3
tag @s[tag=implosion] add implosion2
tag @s add implosion
tag @s[tag=!implosioneffect] add implosioneffect
execute as @e[tag=implosion] if entity @s[tag=implosion4] run function bro:magic/implosion_activate
playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=powderofguneffect]