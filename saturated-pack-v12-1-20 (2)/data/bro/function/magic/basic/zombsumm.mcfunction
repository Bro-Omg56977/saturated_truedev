# stacks up zombie stacks
tag @s[tag=zombieressurect3] add zombieressurect4
tag @s[tag=zombieressurect2] add zombieressurect3
tag @s[tag=zombieressurect] add zombieressurect2
tag @s add zombieressurect
execute as @e[tag=zombieressurect] if entity @s[tag=zombieressurect] run schedule function bro:magic/basic/deplete 2s
execute as @e[tag=zombieressurect4] if entity @s[tag=zombieressurect4] run tag @s add sattarget
execute as @e[tag=zombieressurect4] if entity @s[tag=zombieressurect4] run function bro:magic/basic/zombsumm_activate
playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=zombieressurect]