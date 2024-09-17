#tags enemy

tag @s[tag=!satobliteration] add satobliteration

#should delete what is in their hand
execute as @e[tag=satobliterationuser] at @s run item replace entity @s[tag=satobliterationuser] weapon with air

#summons some stuff and then does 100 damage

playsound entity.glow_squid.squirt ambient @s[tag=satobliteration]
execute as @e[tag=satobliteration] at @s run particle minecraft:cherry_leaves ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=satobliteration] at @s run particle minecraft:soul_fire_flame ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satobliteration] at @s run particle minecraft:flame ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=satobliteration] at @s run particle minecraft:flash ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=satobliteration] at @s run particle minecraft:falling_honey ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=satobliteration] at @s run particle minecraft:campfire_signal_smoke ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=satobliteration] at @s run particle minecraft:witch ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=satobliteration] at @s run summon end_crystal ~ ~ ~
execute as @e[tag=satobliteration] at @s run summon tnt ~ ~ ~ {fuse:1}
execute as @e[tag=satobliteration] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=satobliteration] at @s run damage @s 100 magic
execute as @e[tag=satobliteration] run function bro:magic/ihateyou_remove