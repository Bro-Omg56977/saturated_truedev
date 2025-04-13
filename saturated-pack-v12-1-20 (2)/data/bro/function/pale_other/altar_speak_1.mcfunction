playsound entity.shulker_bullet.hit ambient @a[distance=..32] ~ ~ ~ 2 0.75
playsound ambient.soul_sand_valley.mood ambient @a[distance=..32] ~ ~ ~ 2 0.75

#chooses a random-ish message to tell nearby players
execute store result score @s sat.other run random value 1..8

# said message
execute if score @s sat.other matches 1 run tellraw @a[distance=..32] "§f§kA gift§r§f? §kfor me§r§f? §kHow thoughtful§r§f."
execute if score @s sat.other matches 2 run tellraw @a[distance=..32] "§f§kYou do me a favor giving me these§r§f. §kI hope you know that§r§f."
execute if score @s sat.other matches 3 run tellraw @a[distance=..32] "§f§kI simply want what is in my grasp§r§f."
execute if score @s sat.other matches 4 run tellraw @a[distance=..32] "§f§kI wish you a safe journey in the End§r§f."
execute if score @s sat.other matches 5 run tellraw @a[distance=..32] "§f§kIt was not your fault§r§f, §kSteve§r§f(?)"
execute if score @s sat.other matches 6 run tellraw @a[distance=..32] "§f§kDo you know who I am§r§f? §kwhat I am§r§f?"
execute if score @s sat.other matches 7 run tellraw @a[distance=..32] "§f§kI do not actually need these things§r§f... §kBut i do want them."
execute if score @s sat.other matches 8 run tellraw @a[distance=..32] "§f§kThe others may pressure you to make a decision§r§f."