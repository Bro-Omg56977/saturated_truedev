#heavily inspired from flame raycast from ultris. thanks limesplatus

execute as @s at @s run scoreboard objectives add sat.tempcount.0 dummy
scoreboard players add temp sat.tempcount.0 1

execute if score temp sat.tempcount.0 matches 1 run playsound item.bucket.empty_lava hostile @a[distance=..32] ~ ~ ~ 1.5 1.6



particle flame ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]

execute unless block ~ ~-.25 ~ air if score temp sat.tempcount.0 matches 8..63 run function bro:magic/superfire/flame_line_end1
execute unless block ~ ~-.25 ~ air if score temp sat.tempcount.0 matches 8..63 run scoreboard players set temp sat.tempcount.0 64
execute unless score temp sat.tempcount.0 matches 64.. positioned ^ ^ ^.5 run function bro:magic/superfire/flame_line

scoreboard players reset temp sat.tempcount.0
