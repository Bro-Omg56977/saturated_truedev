# Display particles when implosion, then implode
playsound minecraft:block.bell.resonate ambient @s[tag=purifyeffect]
execute as @e[tag=purifyeffect] at @s run particle minecraft:small_gust ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=purifyeffect] at @s run particle minecraft:small_gust ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=purifyeffect] at @s run particle minecraft:small_gust ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=purifyeffect] at @s run particle minecraft:small_gust ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=purifyeffect] at @s run particle minecraft:small_gust ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=purifyeffect] at @s run particle minecraft:small_gust ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=purifyeffect] at @s run particle minecraft:small_gust ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=purifyeffect] run effect give @s minecraft:blindness 30 1
execute as @e[tag=purifyeffect] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[tag=purifyeffect] if entity @s[type=#minecraft:undead] at @s run summon tnt ~ ~ ~ {fuse:1}
execute as @e[tag=purifyeffect] if entity @s[type=#minecraft:undead] run effect give @s instant_health 1 4
execute as @e[tag=purifyeffect] run function bro:magic/purify_remove