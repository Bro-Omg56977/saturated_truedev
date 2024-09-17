# stacks up some stacks or something idek
tag @s add evilwaveeffect
tag @s add evilwavesound
execute run playsound minecraft:block.glass.break ambient @s[tag=evilwavesound] ~ ~ ~ 1 1
execute run playsound minecraft:block.respawn_anchor.deplete ambient @s[tag=evilwavesound] ~ ~ ~ 1 1
execute run playsound minecraft:entity.warden.sonic_charge ambient @s[tag=evilwavesound] ~ ~ ~ 1 0.75
item replace entity @s[tag=evilwaveeffect] weapon with air
execute as @e[tag=evilwaveeffect] if entity @s[tag=evilwaveeffect] run function bro:magic/wave_user_activate