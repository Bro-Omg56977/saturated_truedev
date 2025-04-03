#plays sould effect and a particle as a warning

execute as @e[tag=brobursteffect] at @s run playsound block.respawn_anchor.charge ambient @a[distance=..30] ~ ~ ~ 1 2
execute as @e[tag=brobursteffect] at @s run particle minecraft:electric_spark ~0.2 ~1 ~-0.2 0 0 0 1 34
execute as @e[tag=brobursteffect] at @s run particle minecraft:electric_spark ~-0.2 ~1 ~-0.2 0 0 0 1 34
execute as @e[tag=brobursteffect] at @s run particle minecraft:electric_spark ~ ~1.4 ~ 0 0 0 1 34