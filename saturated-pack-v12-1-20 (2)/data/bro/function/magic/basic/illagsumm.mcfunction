# stacks up zombie stacks
tag @s[tag=illageanimate3] add illageanimate4
tag @s[tag=illageanimate2] add illageanimate3
tag @s[tag=illageanimate] add illageanimate2
tag @s add illageanimate
execute as @e[tag=illageanimate] if entity @s[tag=illageanimate] run schedule function bro:magic/basic/deplete 4s
execute as @e[tag=illageanimate4] if entity @s[tag=illageanimate4] run tag @s add sattarget
execute as @e[tag=illageanimate4] if entity @s[tag=illageanimate4] run schedule function bro:magic/basic/illagsumm_activate 5 replace
playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=illageanimate]

execute as @a[distance=..10] run function bro:magic/basic/summoner