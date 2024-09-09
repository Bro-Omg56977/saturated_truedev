# stacks up zombie stacks
tag @s[tag=pillageranimate3] add pillageranimate4
tag @s[tag=pillageranimate2] add pillageranimate3
tag @s[tag=pillageranimate] add pillageranimate2
tag @s add pillageranimate
execute as @e[tag=pillageranimate] if entity @s[tag=pillageranimate] run schedule function bro:magic/basic/deplete 4s replace
execute as @e[tag=pillageranimate4] if entity @s[tag=pillageranimate4] run tag @s add sattarget
execute as @e[tag=pillageranimate4] if entity @s[tag=pillageranimate4] run schedule function bro:magic/basic/pillsumm_activate 5 replace
playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=pillageranimate]