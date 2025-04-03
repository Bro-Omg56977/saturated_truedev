# Display particles when effect

particle minecraft:end_rod ~0.2 ~1 ~0.2 0 0 0 0.1 10
particle minecraft:glow ~-0.2 ~1 ~0.2 0 0 0 0.1 10
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 10
particle minecraft:glow ~ ~0.6 ~ 0 0 0 0.1 10

#additional sound effects
playsound minecraft:entity.enderman.teleport ambient @a[distance=..30] ~ ~ ~ 1 0.1
playsound minecraft:item.mace.smash_air ambient @a[distance=..30] ~ ~ ~ 1 2
playsound minecraft:block.furnace.fire_crackle ambient @a[distance=..30] ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.twinkle ambient @a[distance=..30] ~ ~ ~ 1 2

#simple damage
damage @s 6 minecraft:lightning_bolt
teleport @s ~ ~ ~ facing ^1 ^ ^1

#final part ig
execute as @e[tag=broelecimbueeffect] run function bro:magic/superelec/imbue_end