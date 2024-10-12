# stacks up zombie stacks
tag @s[tag=skeletonanimate3] add skeletonanimate4
tag @s[tag=skeletonanimate2] add skeletonanimate3
tag @s[tag=skeletonanimate] add skeletonanimate2
tag @s add skeletonanimate
execute as @e[tag=skeletonanimate] if entity @s[tag=skeletonanimate] run schedule function bro:magic/basic/deplete 4s
execute as @e[tag=skeletonanimate4] if entity @s[tag=skeletonanimate4] run tag @s add sattarget
execute as @e[tag=skeletonanimate4] if entity @s[tag=skeletonanimate4] run schedule function bro:magic/basic/skelesumm_activate 5 replace
playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=skeletonanimate]