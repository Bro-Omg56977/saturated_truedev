#infects other mobs withing 7 1/2 blocks with the bacteriophage
execute as @e[tag=bacterioarrow,tag=!bacteriosource] at @s run tag @e[tag=!bacterioarrow,tag=!bacteriosource,distance=..10] add bacterioarrow
execute as @e[tag=bacterioarrow,tag=!bacteriosource,tag=bacterioentity] at @s run tag @e[tag=!bacterioarrow,tag=!bacteriosource,tag=!bacterioentity,distance=..10] add bacterioentity
execute as @e[tag=bacterioarrow,tag=!bacteriosource] at @s run effect give @s minecraft:weakness 5 5
execute as @e[tag=bacteriosource] run schedule function bro:scythe/projectile/bacterio_activate 1s replace