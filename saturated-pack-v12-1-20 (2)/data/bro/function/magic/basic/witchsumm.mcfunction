# stacks up zombie stacks
tag @s[tag=witchanimate3] add witchanimate4
tag @s[tag=witchanimate2] add witchanimate3
tag @s[tag=witchanimate] add witchanimate2
tag @s add witchanimate
execute as @e[tag=witchanimate] if entity @s[tag=witchanimate] run schedule function bro:magic/basic/deplete 4s replace
execute as @e[tag=witchanimate4] if entity @s[tag=witchanimate4] run tag @s add sattarget
execute as @e[tag=witchanimate4] if entity @s[tag=witchanimate4] run schedule function bro:magic/basic/witchsumm_activate 5 replace
playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=witchanimate]