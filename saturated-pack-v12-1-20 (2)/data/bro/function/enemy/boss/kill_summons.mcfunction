#kills phase 1 thralls in preperation for phase 2

execute as @e[tag=herobrinethrall] at @s run particle squid_ink ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=herobrinethrall] at @s run particle squid_ink ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=herobrinethrall] at @s run particle squid_ink ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=herobrinethrall] at @s run particle squid_ink ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=herobrinethrall] at @s run particle squid_ink ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=herobrinethrall] at @s run particle squid_ink ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=herobrinethrall] at @s run particle squid_ink ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=herobrinethrall] at @s run teleport @s ~ -128 ~
execute as @e[tag=herobrinethrall] at @s run damage @s 1000