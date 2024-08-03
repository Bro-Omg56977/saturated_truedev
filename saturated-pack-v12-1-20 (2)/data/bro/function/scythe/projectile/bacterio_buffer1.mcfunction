#infects other mobs withing 7 1/2 blocks with the bacteriophage
execute as @e[tag=bacterioarrow,tag=!bacteriosource] at @s run tag @e[tag=!bacterioarrow,tag=!bacteriosource,distance=..20] add bacterioarrow
execute as @e[tag=bacterioarrow,tag=!bacteriosource] at @s run effect give @s minecraft:weakness 5 5
execute as @e[tag=bacteriosource] run schedule function bro:scythe/projectile/bacterio_buffer2 1s