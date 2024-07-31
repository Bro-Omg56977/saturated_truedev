# adds delusion tag and schedules a teleport

schedule function bro:magic/delusion_activate 60s
tag @s[tag=!delusioneffect] add delusioneffect
playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=delusioneffect]