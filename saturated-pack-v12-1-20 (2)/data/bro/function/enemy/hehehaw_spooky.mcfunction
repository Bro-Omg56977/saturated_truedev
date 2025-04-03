#plays some sounds
playsound entity.witch.ambient ambient @a[distance=..30] ~ ~ ~ 2 0.1
playsound entity.zombie.converted_to_drowned ambient @a[distance=..30] ~ ~ ~ 1 2

#particle effects
particle minecraft:glow ~0.2 ~1 ~0.2 0 0 0 0.1 10
particle minecraft:glow ~0.2 ~1 ~-0.2 0 0 0 0.1 10
particle minecraft:glow ~-0.2 ~1 ~0.2 0 0 0 0.1 10
particle minecraft:glow ~-0.2 ~1 ~-0.2 0 0 0 0.1 10
particle minecraft:glow ~ ~1 ~ 0 0 0 0.1 10
particle minecraft:glow_squid_ink ~ ~1.4 ~ 0 0 0 0.1 10


#dissapears said entity and doesn an instant KO
teleport @s ~ -200 ~
kill @s