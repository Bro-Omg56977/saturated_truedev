# add purify tag and then detonates in 3 s

schedule function bro:magic/purify_activate 3s replace
tag @s[tag=!purifyeffect] add purifyeffect
playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=purifyeffect]