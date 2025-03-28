# Display particles when effect

execute as @e[tag=brobursteffect] at @s run particle minecraft:glow ~0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=brobursteffect] at @s run particle minecraft:end_rod ~0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=brobursteffect] at @s run particle minecraft:glow ~-0.2 ~1 ~0.2 0 0 0 1 10
execute as @e[tag=brobursteffect] at @s run particle minecraft:end_rod ~-0.2 ~1 ~-0.2 0 0 0 1 10
execute as @e[tag=brobursteffect] at @s run particle minecraft:glow ~ ~1 ~ 0 0 0 1 10
execute as @e[tag=brobursteffect] at @s run particle minecraft:end_rod ~ ~1.4 ~ 0 0 0 1 10
execute as @e[tag=brobursteffect] at @s run particle minecraft:flash ~ ~0.6 ~ 0 0 0 0.01 10

#additional sound effects
execute as @e[tag=brobursteffect] at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=..30] ~ ~ ~ 1 0.1
execute as @e[tag=brobursteffect] at @s run playsound minecraft:item.mace.smash_ground_heavy ambient @a[distance=..30] ~ ~ ~ 1 2
execute as @e[tag=brobursteffect] at @s run playsound minecraft:block.furnace.fire_crackle ambient @a[distance=..30] ~ ~ ~ 1 2
execute as @e[tag=brobursteffect] at @s run playsound minecraft:entity.ender_dragon.ambient ambient @a[distance=..30] ~ ~ ~ 1 2

#simple damage
execute as @e[tag=brobursteffect] at @s run effect give @e[tag=!atomsliceeffects,type=!#minecraft:undead,distance=..6] minecraft:instant_damage 1 1 false
execute as @e[tag=brobursteffect] at @s run execute as @e[distance=..5,tag=!brobursteffect] run damage @s 6 lightning_bolt

#final part ig
execute as @e[tag=brobursteffect] run function bro:magic/superelec/burst_end