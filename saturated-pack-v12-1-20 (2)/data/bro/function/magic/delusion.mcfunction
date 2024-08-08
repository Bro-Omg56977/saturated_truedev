#makes it so that entity hit has around a 10% chance of the effect actually happening

scoreboard objectives add delusion dummy
execute store result score @s delusion run random value 1..100

# adds delusion tag and schedules a teleport

execute if score @s delusion matches 1 run schedule function bro:magic/delusion_activate 5s
execute if score @s delusion matches 1 run tag @s[tag=!delusioneffect,type=!ender_dragon,type=!wither,type=!warden] add delusioneffect
execute if score @s delusion matches 1 run playsound minecraft:entity.zombie.attack_iron_door ambient @s[tag=delusioneffect]