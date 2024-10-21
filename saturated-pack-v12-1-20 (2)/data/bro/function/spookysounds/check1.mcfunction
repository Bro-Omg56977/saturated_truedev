#create a scoreboard and set it to one
execute as @e[tag=brosoundeffectmaker] at @s run scoreboard objectives add bro.soundtick.1 dummy
execute as @e[tag=brosoundeffectmaker] at @s run scoreboard players set @s bro.soundtick.1 1
#footstep particle effect
execute as @e[tag=brosoundeffectmaker] at @s run particle minecraft:block{block_state:{Name:bedrock}} ~ ~ ~ 0 0 0 1 10
execute positioned ^ ^ ^-2 as @e[tag=brosoundeffectmaker] at @s run playsound block.stone.step block @s ^ ^ ^-2 1
#footstep sound effect

#checks for nearby players and then sets score to zero
execute as @e[tag=brosoundeffectmaker] at @s run execute if entity @e[distance=..5,tag=bropresentinvoid] run scoreboard players set @s bro.soundtick.1 0
execute as @e[tag=brosoundeffectmaker] at @s run execute if entity @e[distance=..5,tag=bropresentinvoid] run schedule function bro:spookysounds/sounds_forreal 1 replace
#repeats function if score is 1
execute as @e[tag=brosoundeffectmaker] at @s if score @s bro.soundtick.1 matches 1 run schedule function bro:spookysounds/check1 5 replace