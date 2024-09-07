#yet another scoreboard
execute as @e[tag=bropresentinvoid] at @s run scoreboard objectives add bro.noterandomizer.1 dummy
execute as @e[tag=bropresentinvoid] at @s run execute store result score @s bro.noterandomizer.1 run random value 1..9

#some pose they can be in
execute as @e[tag=bropresentinvoid] at @s if score @s bro.noterandomizer.1 matches 1 run give @s paper[custom_name='["",{"text":"Spiral Staircase.","italic":false}]']
execute as @e[tag=bropresentinvoid] at @s if score @s bro.noterandomizer.1 matches 2 run give @s paper[custom_name='["",{"text":"Rhinoscerous Beetle...","italic":false}]']
execute as @e[tag=bropresentinvoid] at @s if score @s bro.noterandomizer.1 matches 3 run give @s paper[custom_name='["",{"text":"Desolation Row.","italic":false}]']
execute as @e[tag=bropresentinvoid] at @s if score @s bro.noterandomizer.1 matches 4 run give @s paper[custom_name='["",{"text":"Fig Tart.","italic":false}]']
execute as @e[tag=bropresentinvoid] at @s if score @s bro.noterandomizer.1 matches 5 run give @s paper[custom_name='["",{"text":"Singularity Point!","italic":false}]']
execute as @e[tag=bropresentinvoid] at @s if score @s bro.noterandomizer.1 matches 6 run give @s paper[custom_name='["",{"text":"Giotto.","italic":false}]']
execute as @e[tag=bropresentinvoid] at @s if score @s bro.noterandomizer.1 matches 7 run give @s paper[custom_name='["",{"text":"Angel!","italic":false}]']
execute as @e[tag=bropresentinvoid] at @s if score @s bro.noterandomizer.1 matches 8 run give @s paper[custom_name='["",{"text":"Hydrangea.","italic":false}]']
execute as @e[tag=bropresentinvoid] at @s if score @s bro.noterandomizer.1 matches 9 run give @s paper[custom_name='["",{"text":"Secret Emperor!","italic":false}]']