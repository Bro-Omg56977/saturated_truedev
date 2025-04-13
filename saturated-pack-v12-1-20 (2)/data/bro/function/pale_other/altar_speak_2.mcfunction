playsound entity.shulker_bullet.hit ambient @a[distance=..32] ~ ~ ~ 2 0.75
playsound ambient.soul_sand_valley.mood ambient @a[distance=..32] ~ ~ ~ 2 0.75

#chooses a random-ish message to tell nearby players
execute store result score @s sat.other run random value 1..5

# said message
execute if score @s sat.other matches 1 run tellraw @a[distance=..32] "§8§kAhThey owe me§r§8, §klike I owe you§r§8."
execute if score @s sat.other matches 2 run tellraw @a[distance=..32] "§8§kBut I digress§r§8. §kHere§r§8, §khave this§r§8."
execute if score @s sat.other matches 3 run tellraw @a[distance=..32] "§8§kYou have earned it§r§8."
execute if score @s sat.other matches 4 run tellraw @a[distance=..32] "§8§kThis§r§8; §kyou have earned§r§8."
execute if score @s sat.other matches 5 run tellraw @a[distance=..32] "§8§kOh yeah§r§8, §kyour reward§r§8."

#entity gives player a rfeward
setblock ~ ~-4 ~ minecraft:gray_shulker_box{LootTable:"bro:chests/pale/altar_entity_drop"} destroy

#resets the interact
execute as @e[type=interaction,tag=sat.altar.interaction.entity.readdlater] at @s run function bro:pale_other/altar_interact_enable