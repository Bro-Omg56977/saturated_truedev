execute positioned ~ ~ ~ as @s at @s run playsound entity.wither.death block @s ~ ~ ~ 0.25
execute as @e[tag=herobrinethrallp4] at @s run schedule function bro:enemy/boss/kill_summonsp4 1 replace
advancement grant @s only bro:saturated/fair_and_square
advancement revoke @s only bro:boss/detectphase4death