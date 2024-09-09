# stacks up zombie stacks
tag @s[tag=babelanimate3] add babelanimate4
tag @s[tag=babelanimate2] add babelanimate3
tag @s[tag=babelanimate] add babelanimate2
tag @s add babelanimate
execute as @e[tag=babelanimate] if entity @s[tag=babelanimate] run schedule function bro:magic/basic/deplete 4s replace
execute as @e[tag=babelanimate4] if entity @s[tag=babelanimate4] run tag @s add sattarget
execute as @e[tag=babelanimate4] if entity @s[tag=babelanimate4] run scoreboard objectives add babelsuper_randomizer dummy
execute as @e[tag=babelanimate4] if entity @s[tag=babelanimate4] run execute store result score @s babelsuper_randomizer run random value 3..5
execute as @e[tag=babelanimate4] if entity @s[tag=babelanimate4] run schedule function bro:magic/basic/babelsumm_activate 5 replace
playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=babelanimate]